import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/client_provider.dart';
import 'package:app/data/source/graphql_helpers.dart';
import 'package:app/data/graphql/__generated__/permission.req.gql.dart';
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart';

abstract class PermissionRepository {
  /// メンバーによる掲示板作成が許可されているか。サークル作成直後などまだ
  /// permissionレコードが無い場合はnullを返す。
  Future<bool?> getBoardCreationPermission(String circleId);
  Future<bool> changeBoardCreationPermission({
    required String circleId,
    required bool allowed,
  });
}

class PermissionRepositoryImpl implements PermissionRepository {
  PermissionRepositoryImpl(this._ref);

  final Ref _ref;

  @override
  Future<bool?> getBoardCreationPermission(String circleId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetCirclePermissionReq((b) => b..vars.circleId = circleId);
    final data = await executeRequest(client, req);
    return data.circle_permissions_by_pk?.permission_board_creation;
  }

  @override
  Future<bool> changeBoardCreationPermission({
    required String circleId,
    required bool allowed,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GChangeBoardCreationPermissionReq(
      (b) => b
        ..vars.input.replace(
          GChangeBoardCreationPermissionInput((i) => i
            ..circle_id = circleId
            ..allowed = allowed),
        ),
    );
    final data = await executeRequest(client, req);
    return data.change_board_creation_permission;
  }
}
