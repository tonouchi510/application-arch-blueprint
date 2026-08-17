import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/ui/circle/circle_permission_view_model.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';

class CirclePermissionTab extends HookConsumerWidget {
  const CirclePermissionTab({super.key, required this.circleId});

  final String circleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(circlePermissionViewModelProvider(circleId));
    final viewModel = ref.read(
      circlePermissionViewModelProvider(circleId).notifier,
    );

    return state.when(
      data: (allowed) => LoadingOverlay(
        isLoading: false,
        child: ListView(
          children: [
            SwitchListTile(
              title: const Text('メンバーによる掲示板作成を許可'),
              value: allowed ?? false,
              onChanged: (value) async {
                try {
                  await viewModel.setBoardCreationAllowed(value);
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
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
