import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/circle_detail_view_model.dart';
import 'package:app/ui/components/error_dialog.dart';

class CircleOverviewTab extends HookConsumerWidget {
  const CircleOverviewTab({super.key, required this.circle});

  final CircleModel circle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(currentUserIdProvider);
    final isOwner = circle.ownerId == uid;
    final viewModel = ref.read(circleDetailViewModelProvider(circle.id).notifier);
    final ownerName =
        ref.watch(userNamesProvider(userIdsKey([circle.ownerId]))).value?[circle
            .ownerId] ??
        circle.ownerId;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                circle.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            if (isOwner)
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'サークル名を編集',
                onPressed: () => _editText(
                  context: context,
                  title: 'サークル名を編集',
                  initialValue: circle.name,
                  onSubmit: (value) async {
                    try {
                      await viewModel.updateName(value);
                    } catch (e) {
                      if (context.mounted) {
                        await showErrorDialog(context, e.toString());
                      }
                    }
                  },
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Text(circle.description)),
            if (isOwner)
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: '説明を編集',
                onPressed: () => _editText(
                  context: context,
                  title: '説明を編集',
                  initialValue: circle.description,
                  onSubmit: (value) async {
                    try {
                      await viewModel.updateDescription(value);
                    } catch (e) {
                      if (context.mounted) {
                        await showErrorDialog(context, e.toString());
                      }
                    }
                  },
                ),
              ),
          ],
        ),
        const SizedBox(height: 24),
        Text('メンバー数: ${circle.memberCount}/30'),
        const SizedBox(height: 8),
        Text('オーナー: $ownerName'),
      ],
    );
  }

  Future<void> _editText({
    required BuildContext context,
    required String title,
    required String initialValue,
    required Future<void> Function(String) onSubmit,
  }) async {
    final controller = TextEditingController(text: initialValue);
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
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
      await onSubmit(controller.text.trim());
    }
  }
}
