import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';

/// 現在ログイン中のユーザーIDを返す Provider
final currentUserIdProvider = Provider<String?>((ref) {
  return ref.watch(authControllerProvider)?.uid;
});
