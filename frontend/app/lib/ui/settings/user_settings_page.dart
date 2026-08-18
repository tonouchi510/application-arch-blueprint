import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/components/confirmation_dialog.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';
import 'package:app/ui/route/app_router.gr.dart';
import 'package:app/ui/settings/user_settings_view_model.dart';
import 'package:app/ui/theme/app_theme.dart';

@RoutePage()
class UserSettingsPage extends HookConsumerWidget {
  const UserSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final user = ref.watch(authControllerProvider);
    final role = ref.watch(currentUserRoleProvider).value;
    final state = ref.watch(userSettingsViewModelProvider);
    final viewModel = ref.read(userSettingsViewModelProvider.notifier);

    final nameController = useTextEditingController(text: user?.displayName ?? '');
    final phoneController = useTextEditingController(
      text: user?.phoneNumber ?? '',
    );
    final photoUrlController = useTextEditingController(
      text: user?.photoURL ?? '',
    );

    return Scaffold(
      backgroundColor: theme.data.colorScheme.surface,
      appBar: AppBar(
        title: const Text('ユーザー設定'),
        backgroundColor: theme.data.colorScheme.surface,
      ),
      body: LoadingOverlay(
        isLoading: state.isLoading,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: '表示名'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: '電話番号'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: photoUrlController,
              decoration: const InputDecoration(labelText: 'プロフィール画像URL'),
            ),
            const SizedBox(height: 12),
            Text('プラン: ${role ?? '-'}（読み取り専用）'),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () async {
                try {
                  await viewModel.saveProfile(
                    name: nameController.text.trim(),
                    phoneNumber: phoneController.text.trim(),
                    photoUrl: photoUrlController.text.trim(),
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('保存しました')));
                  }
                } catch (e) {
                  if (context.mounted) await showErrorDialog(context, e.toString());
                }
              },
              child: const Text('保存'),
            ),
            const Divider(height: 48),
            OutlinedButton(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
              onPressed: () => _confirmDeleteAccount(context, ref, viewModel),
              child: const Text('退会する（アカウントを削除します）'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmDeleteAccount(
    BuildContext context,
    WidgetRef ref,
    UserSettingsViewModel viewModel,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => const ConfirmationDialog(
        message: '本当に退会しますか？この操作は取り消せません。',
      ),
    );
    if (confirmed != true) return;

    try {
      final succeeded = await viewModel.deleteAccount();
      if (succeeded && context.mounted) {
        context.router.replaceAll([const SigninRoute()]);
      }
    } catch (e) {
      if (context.mounted) await showErrorDialog(context, e.toString());
    }
  }
}
