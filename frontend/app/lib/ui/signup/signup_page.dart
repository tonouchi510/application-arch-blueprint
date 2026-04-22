import 'package:auto_route/auto_route.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/route/app_router.gr.dart';

@RoutePage()
class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RegisterScreen(
      actions: [
        AuthStateChangeAction<UserCreated>((context, state) async {
          // メール/パスワード認証の場合のみメール検証メールを送信
          final authController = ref.read(authControllerProvider.notifier);
          final user = ref.read(authControllerProvider);

          // プロバイダーを確認（email/password認証かどうか）
          final isEmailPasswordAuth =
              user?.providerData.any((info) => info.providerId == 'password') ??
              false;

          if (isEmailPasswordAuth) {
            try {
              await authController.sendEmailVerification();

              if (context.mounted) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => AlertDialog(
                    title: const Text('確認メールを送信しました'),
                    content: const Text(
                      'ご登録いただいたメールアドレス宛に確認メールを送信しました。\n'
                      'メール内のリンクをクリックしてメールアドレスを確認してください。\n'
                      '確認後、サインインページからログインしてください。\n\n'
                      '※メールが届かない場合は、迷惑メールフォルダもご確認ください。',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          // サインアウトしてサインインページへ
                          authController.signOut();
                          context.router.push(const SigninRoute());
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
              return;
            } catch (e) {
              // エラー時はそのままサインインページへ
              authController.signOut();
              if (context.mounted) {
                context.router.push(const SigninRoute());
              }
              return;
            }
          }

          // Google認証などの場合は通常通りサインアウトして再ログイン
          authController.signOut();
          await Future.delayed(const Duration(seconds: 3));

          if (context.mounted) {
            context.router.push(const SigninRoute());
          }
        }),
        AuthStateChangeAction<SignedIn>((context, state) async {
          // カスタムクレームが設定されているか確認
          final authController = ref.read(authControllerProvider.notifier);
          final hasCustomClaims = await authController.hasCustomClaims();

          if (!hasCustomClaims) {
            // カスタムクレームが設定されていない場合
            if (context.mounted) {
              showErrorDialog(
                context,
                'アカウントの準備が完了していません。\n'
                'しばらくお待ちいただいてから、再度サインインしてください。\n\n'
                'なお、5分以上経っても完了しない場合は、お手数をおかけしますがサポートまでお問合せください。\n\n'
                '=> https://app.sample.com/contact',
              );
            }

            // サインアウト
            authController.signOut();
            return;
          }

          // カスタムクレームが設定されている場合はホームに遷移
          if (context.mounted) {
            context.router.push(const HomeRoute());
          }
        }),
      ],
      footerBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('すでにアカウントをお持ちの方は '),
              TextButton(
                onPressed: () {
                  context.router.push(const SigninRoute());
                },
                child: const Text('サインイン'),
              ),
            ],
          ),
        );
      },
    );
  }
}
