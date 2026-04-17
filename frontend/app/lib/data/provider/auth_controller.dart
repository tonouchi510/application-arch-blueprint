import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/source/firebase_auth_data_source.dart';

final authControllerProvider = NotifierProvider<AuthController, User?>(
  AuthController.new,
);

class AuthController extends Notifier<User?> {
  StreamSubscription<User?>? _userStreamSubscription;

  @override
  User? build() {
    final authDataSource = ref.read(firebaseAuthDataSourceProvider);
    final currentUser = authDataSource.getCurrentUser();

    _userStreamSubscription = authDataSource.authStateChange.listen((user) {
      state = user;
    });

    ref.onDispose(() => _userStreamSubscription?.cancel());

    return currentUser;
  }

  void signOut() async {
    state = null;
    await ref.read(firebaseAuthDataSourceProvider).signOut();
  }

  /// メールアドレス検証メールを送信
  Future<void> sendEmailVerification() async {
    final user = state;
    if (user != null && !user.emailVerified) {
      await user.sendEmailVerification();
    }
  }

  /// メールアドレスが検証済みかチェック
  Future<bool> isEmailVerified() async {
    final user = state;
    if (user == null) return false;

    await user.reload();
    final refreshedUser = ref.read(firebaseAuthProvider).currentUser;
    return refreshedUser?.emailVerified ?? false;
  }

  /// カスタムクレームが設定されているか確認する
  Future<bool> hasCustomClaims() async {
    if (state == null) return false;

    try {
      final idTokenResult = await state!.getIdTokenResult();
      final hasuraClaims =
          idTokenResult.claims?['https://hasura.io/jwt/claims'];
      return hasuraClaims != null;
    } catch (e) {
      return false;
    }
  }
}
