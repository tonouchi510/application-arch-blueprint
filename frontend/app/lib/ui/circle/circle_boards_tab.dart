import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/board_thread_view.dart';
import 'package:app/ui/circle/circle_boards_view_model.dart';
import 'package:app/ui/circle/circle_permission_view_model.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';

const _boardStatusLabels = {0: '進行中', 1: '完了'};

class CircleBoardsTab extends HookConsumerWidget {
  const CircleBoardsTab({super.key, required this.circle});

  final CircleModel circle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(circleBoardsViewModelProvider(circle.id));
    final viewModel = ref.read(circleBoardsViewModelProvider(circle.id).notifier);
    final uid = ref.watch(currentUserIdProvider);
    final isOwner = circle.ownerId == uid;
    final boardCreationAllowed =
        ref.watch(circlePermissionViewModelProvider(circle.id)).value ?? false;
    final canCreateBoard = isOwner || boardCreationAllowed;
    final selectedBoardId = useState<String?>(null);

    return state.when(
      data: (boards) => LoadingOverlay(
        isLoading: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const Text('掲示板一覧', style: TextStyle(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  if (canCreateBoard)
                    TextButton.icon(
                      onPressed: () =>
                          _showCreateBoardDialog(context, viewModel),
                      icon: const Icon(Icons.add),
                      label: const Text('作成'),
                    ),
                ],
              ),
            ),
            Expanded(
              child: boards.isEmpty
                  ? const Center(child: Text('まだ掲示板がありません'))
                  : ListView.builder(
                      itemCount: boards.length,
                      itemBuilder: (context, index) {
                        final board = boards[index];
                        final selected = selectedBoardId.value == board.id;
                        return Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.push_pin),
                              title: Text(board.topic),
                              subtitle: Text(
                                '${_boardStatusLabels[board.status] ?? '不明'} ・ ${board.postCount}/100',
                              ),
                              selected: selected,
                              onTap: () => selectedBoardId.value =
                                  selected ? null : board.id,
                            ),
                            if (selected)
                              BoardThreadView(circleId: circle.id, board: board),
                          ],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }

  Future<void> _showCreateBoardDialog(
    BuildContext context,
    CircleBoardsViewModel viewModel,
  ) async {
    final controller = TextEditingController();
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('掲示板を作成'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(labelText: 'トピック'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('作成'),
          ),
        ],
      ),
    );
    if (result == true && controller.text.trim().isNotEmpty) {
      try {
        await viewModel.createBoard(controller.text.trim());
      } catch (e) {
        if (context.mounted) await showErrorDialog(context, e.toString());
      }
    }
  }
}
