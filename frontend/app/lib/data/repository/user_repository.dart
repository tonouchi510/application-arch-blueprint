import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/client_provider.dart';
import 'package:app/data/source/graphql_helpers.dart';
import 'package:app/data/graphql/__generated__/user.req.gql.dart';
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart';

abstract class UserRepository {
  Future<void> updateProfile({
    String? name,
    String? phoneNumber,
    String? photoUrl,
  });
  Future<bool> deleteAccount(String uid);

  /// 指定したuidの表示名をまとめて取得する。存在しないuidは結果に含まれない。
  Future<Map<String, String>> getUserNames(List<String> uids);
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._ref);

  final Ref _ref;

  @override
  Future<Map<String, String>> getUserNames(List<String> uids) async {
    if (uids.isEmpty) return {};
    final client = _ref.read(graphqlClientProvider);
    final req = GGetUsersReq((b) => b..vars.ids.addAll(uids.toSet()));
    final data = await executeRequest(client, req);
    return {for (final u in data.users) u.id: u.name};
  }

  @override
  Future<void> updateProfile({
    String? name,
    String? phoneNumber,
    String? photoUrl,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GUpdateUserAttributesReq(
      (b) => b
        ..vars.input.replace(
          GUpdateUserAttributesInput((i) => i
            ..name = name
            ..phone_number = phoneNumber
            ..photo_url = photoUrl),
        ),
    );
    await executeRequest(client, req);
  }

  @override
  Future<bool> deleteAccount(String uid) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GDeleteUserReq(
      (b) => b..vars.input.replace(GDeleteUserInput((i) => i..uid = uid)),
    );
    final data = await executeRequest(client, req);
    return data.delete_user;
  }
}
