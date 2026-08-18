import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/data/provider/repository_provider.dart';

/// 現在ログイン中のユーザーIDを返す Provider
final currentUserIdProvider = Provider<String?>((ref) {
  return ref.watch(authControllerProvider)?.uid;
});

/// 現在ログイン中のユーザーのHasuraロール(freemium/premium/admin)を返す Provider。
/// IDトークンのcustom claims(`https://hasura.io/jwt/claims`)から取得する。
final currentUserRoleProvider = FutureProvider<String?>((ref) async {
  final user = ref.watch(authControllerProvider);
  if (user == null) return null;

  final idTokenResult = await user.getIdTokenResult();
  // Web版はJS interop経由でclaimsが返るため、ネストしたオブジェクトの実行時の型が
  // Map<String, dynamic>と厳密に一致するとは限らない。`as Map<String, dynamic>`で
  // 強制キャストすると失敗しうるので、`is Map`判定 + 動的アクセスで安全に取り出す。
  final rawClaims = idTokenResult.claims;
  final hasuraClaims = rawClaims?['https://hasura.io/jwt/claims'];
  if (hasuraClaims is! Map) return null;

  final role = hasuraClaims['x-hasura-default-role'];
  return role is String ? role : null;
});

/// [userNamesProvider]に渡すキーを作る。uidの集合が同じであれば呼び出し毎に新しい
/// Listインスタンスを作っても同じキー(String)になるようにする。
///
/// Dartの`List`は値の等価性を持たない(参照が違えば別物扱い)ため、familyのキーに
/// 生の`List<String>`を渡すと、ビルドの度に新しいインスタンス→別キャッシュエントリ
/// として扱われてしまう。結果、取得が完了する前に次のビルドで別のfamilyインスタンス
/// が作られ、いつまで経ってもloading状態から抜けられなくなる(UIには常にfallbackの
/// uidが表示され続ける)。値の等価性を持つ`String`に変換してから渡すことでこれを防ぐ。
String userIdsKey(Iterable<String> uids) => (uids.toSet().toList()..sort()).join(',');

/// 指定したuidの表示名をまとめて解決する。uid -> 表示名 のMapを返す。
/// 見つからないuidはMapに含まれない(呼び出し側は uid をfallback表示に使う)。
/// キーは[userIdsKey]で作った文字列を渡すこと(生の`List<String>`は渡さない)。
final userNamesProvider = FutureProvider.family<Map<String, String>, String>(
  (ref, uidsKey) {
    final uids = uidsKey.isEmpty ? const <String>[] : uidsKey.split(',');
    return ref.read(userRepositoryProvider).getUserNames(uids);
  },
);
