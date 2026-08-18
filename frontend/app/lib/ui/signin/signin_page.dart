import 'package:auto_route/auto_route.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/ui/route/app_router.gr.dart';

@RoutePage()
class SigninPage extends ConsumerWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) async {
          final authController = ref.read(authControllerProvider.notifier);
          final user = ref.read(authControllerProvider);

          // プロバイダーを確認（email/password認証かどうか）
          final isEmailPasswordAuth =
              user?.providerData.any((info) => info.providerId == 'password') ??
              false;

          // メール/パスワード認証の場合のみメールアドレスの検証を確認
          if (isEmailPasswordAuth) {
            final isEmailVerified = await authController.isEmailVerified();

            if (!isEmailVerified) {
              // メールアドレスが未検証の場合
              if (context.mounted) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    title: const Text('メールアドレスが未確認です'),
                    content: const Text(
                      'メールアドレスの確認が完了していません。\n'
                      'ご登録のメールアドレス宛に送信された確認メール内のリンクをクリックしてください。\n'
                      'メールが見つからない場合は、確認メールを再送信できます。\n\n'
                      '※メールが届いていない場合は、迷惑メールフォルダもご確認ください。',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                          // 確認メールを再送信
                          try {
                            await authController.sendEmailVerification();
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    '確認メールを再送信しました。\n\n'
                                    'メールが見つからない場合、迷惑メールフォルダもご確認ください。\n'
                                    'それでも見つからない場合は、お手数ですがサポートにお問い合わせください。',
                                  ),
                                ),
                              );
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('メールの送信に失敗しました')),
                              );
                            }
                          }
                          authController.signOut();
                        },
                        child: const Text('確認メールを再送信'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          authController.signOut();
                        },
                        child: const Text('閉じる'),
                      ),
                    ],
                  ),
                );
              }

              return;
            }
          }

          if (context.mounted) {
            context.router.push(const HomeRoute());
          }
        }),
        AuthStateChangeAction<UserCreated>((context, state) async {
          // サインアウトして再ログインを促す
          ref.read(authControllerProvider.notifier).signOut();
          // カスタムクレームが設定されるまで3秒待機
          await Future.delayed(const Duration(seconds: 3));

          if (context.mounted) {
            context.router.push(const SigninRoute());
          }
        }),
      ],
    );
  }
}
