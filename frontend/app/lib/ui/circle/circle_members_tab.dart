import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/circle_members_view_model.dart';
import 'package:app/ui/components/confirmation_dialog.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';

const _maxCircleMembers = 30;

class CircleMembersTab extends HookConsumerWidget {
  const CircleMembersTab({super.key, required this.circle});

  final CircleModel circle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(circleMembersViewModelProvider(circle.id));
    final viewModel = ref.read(circleMembersViewModelProvider(circle.id).notifier);
    final uid = ref.watch(currentUserIdProvider);
    final isOwner = circle.ownerId == uid;

    return state.when(
      data: (members) {
        // circle_membersにはオーナーの行が無い(オーナーはowner_idでのみ管理される)ため、
        // 表示用にオーナーを先頭へ合成する。
        final ownerId = circle.ownerId;
        final totalCount = members.length + 1;
        final allIds = [ownerId, ...members.map((m) => m.userId)];
        final names =
            ref.watch(userNamesProvider(userIdsKey(allIds))).value ?? const {};

        return LoadingOverlay(
          isLoading: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      'メンバー $totalCount/$_maxCircleMembers',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    if (isOwner)
                      TextButton.icon(
                        onPressed: totalCount >= _maxCircleMembers
                            ? null
                            : () => _showAddMemberDialog(context, viewModel),
                        icon: const Icon(Icons.person_add),
                        label: const Text('追加'),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: totalCount,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(names[ownerId] ?? ownerId),
                        subtitle: const Text('オーナー'),
                      );
                    }

                    final member = members[index - 1];
                    final isSelf = member.userId == uid;

                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(names[member.userId] ?? member.userId),
                      trailing: isSelf
                          ? TextButton(
                              onPressed: () =>
                                  _confirmLeave(context, viewModel, uid!),
                              child: const Text('退会'),
                            )
                          : isOwner
                          ? PopupMenuButton<String>(
                              onSelected: (value) async {
                                if (value == 'delegate') {
                                  await _confirmDelegate(
                                    context,
                                    viewModel,
                                    member.userId,
                                  );
                                }
                              },
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'delegate',
                                  child: Text('オーナー権限を委譲'),
                                ),
                              ],
                            )
                          : null,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }

  Future<void> _showAddMemberDialog(
    BuildContext context,
    CircleMembersViewModel viewModel,
  ) async {
    final controller = TextEditingController();
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('メンバーを追加'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(labelText: 'ユーザーID'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('追加'),
          ),
        ],
      ),
    );
    if (result == true && controller.text.trim().isNotEmpty) {
      try {
        await viewModel.addMember(controller.text.trim());
      } catch (e) {
        if (context.mounted) await showErrorDialog(context, e.toString());
      }
    }
  }

  Future<void> _confirmLeave(
    BuildContext context,
    CircleMembersViewModel viewModel,
    String uid,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => const ConfirmationDialog(message: 'このサークルから退会しますか？'),
    );
    if (confirmed == true) {
      try {
        await viewModel.leave(uid);
      } catch (e) {
        if (context.mounted) await showErrorDialog(context, e.toString());
      }
    }
  }

  Future<void> _confirmDelegate(
    BuildContext context,
    CircleMembersViewModel viewModel,
    String newOwnerId,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => const ConfirmationDialog(message: 'このメンバーにオーナー権限を委譲しますか？'),
    );
    if (confirmed == true) {
      try {
        await viewModel.delegateOwner(newOwnerId);
      } catch (e) {
        if (context.mounted) await showErrorDialog(context, e.toString());
      }
    }
  }
}
