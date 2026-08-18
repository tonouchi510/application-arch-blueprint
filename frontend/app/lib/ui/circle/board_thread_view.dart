import 'package:flutter/material.dart';
import 'package:app/foundation/responsive.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/board.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/board_posts_view_model.dart';
import 'package:app/ui/circle/circle_boards_view_model.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';

/// 掲示板の状態。バックエンドのsmallintと対応(0=進行中, 1=完了)。
const _boardStatusLabels = {0: '進行中', 1: '完了'};

class BoardThreadView extends HookConsumerWidget {
  const BoardThreadView({super.key, required this.circleId, required this.board});

  final String circleId;
  final BoardModel board;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arg = BoardPostsArg(circleId: circleId, boardId: board.id);
    final state = ref.watch(boardPostsViewModelProvider(arg));
    final viewModel = ref.read(boardPostsViewModelProvider(arg).notifier);
    final uid = ref.watch(currentUserIdProvider);
    final isBoardOwner = board.ownerId == uid;
    final textController = useTextEditingController();

    // スマホ幅では画面の半分程度、それ以外では最大480に収める。
    final maxHeight = context.isMobileWidth ? context.screenHeight * 0.5 : 480.0;

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          ListTile(
            title: Text(board.topic),
            subtitle: Text(_boardStatusLabels[board.status] ?? '不明'),
            trailing: isBoardOwner
                ? PopupMenuButton<String>(
                    onSelected: (value) async {
                      if (value == 'edit_topic') {
                        await _editTopic(context, ref, viewModel, board);
                      } else if (value == 'toggle_status') {
                        await _toggleStatus(context, ref, viewModel, board);
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'edit_topic',
                        child: Text('トピック編集'),
                      ),
                      PopupMenuItem(
                        value: 'toggle_status',
                        child: Text(
                          board.status == 0 ? 'ステータスを完了にする' : 'ステータスを進行中にする',
                        ),
                      ),
                    ],
                  )
                : null,
          ),
          const Divider(height: 1),
          Expanded(
            child: state.when(
              data: (posts) {
                final names =
                    ref
                        .watch(
                          userNamesProvider(
                            userIdsKey(posts.map((p) => p.userId)),
                          ),
                        )
                        .value ??
                    const {};
                return LoadingOverlay(
                  isLoading: false,
                  child: posts.isEmpty
                      ? const Center(child: Text('まだ投稿がありません'))
                      : ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            final post = posts[index];
                            final authorName = names[post.userId] ?? post.userId;
                            return ListTile(
                              dense: true,
                              title: Text(post.content),
                              subtitle: Text('$authorName ・ ${post.createdAt}'),
                            );
                          },
                        ),
                );
              },
              loading: () =>
                  const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
              error: (error, stackTrace) => Center(child: Text('Error: $error')),
            ),
          ),
          if ((state.value?.length ?? 0) >= CircleBoardsViewModel.maxBoardPosts)
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('これ以上投稿できません（上限100件）'),
            )
          else
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintText: 'メッセージを入力...',
                        isDense: true,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () async {
                      final content = textController.text.trim();
                      if (content.isEmpty) return;
                      try {
                        await viewModel.addPost(content);
                        textController.clear();
                      } catch (e) {
                        if (context.mounted) {
                          await showErrorDialog(context, e.toString());
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _editTopic(
    BuildContext context,
    WidgetRef ref,
    BoardPostsViewModel viewModel,
    BoardModel board,
  ) async {
    final controller = TextEditingController(text: board.topic);
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('トピックを編集'),
        content: TextField(controller: controller, autofocus: true),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('保存'),
          ),
        ],
      ),
    );
    if (result == true && controller.text.trim().isNotEmpty) {
      try {
        await viewModel.changeTopic(controller.text.trim());
        ref.invalidate(circleBoardsViewModelProvider(circleId));
      } catch (e) {
        if (context.mounted) await showErrorDialog(context, e.toString());
      }
    }
  }

  Future<void> _toggleStatus(
    BuildContext context,
    WidgetRef ref,
    BoardPostsViewModel viewModel,
    BoardModel board,
  ) async {
    try {
      await viewModel.changeStatus(board.status == 0 ? 1 : 0);
      ref.invalidate(circleBoardsViewModelProvider(circleId));
    } catch (e) {
      if (context.mounted) await showErrorDialog(context, e.toString());
    }
  }
}
