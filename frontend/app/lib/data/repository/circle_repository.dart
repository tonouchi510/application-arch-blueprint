import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/client_provider.dart';
import 'package:app/data/source/graphql_helpers.dart';
import 'package:app/data/graphql/__generated__/circle.req.gql.dart';
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart';

abstract class CircleRepository {
  Future<CircleModel> createCircle({
    required String name,
    required String description,
  });

  /// 自分が参加しているサークル一覧
  Future<List<CircleModel>> getMyCircles(String uid);

  /// 全サークル一覧（サークルを探すタブ用）
  Future<List<CircleModel>> getAllCircles();
  Future<CircleModel?> getCircle(String circleId);
  Future<List<CircleMemberModel>> getCircleMembers(String circleId);
  Future<CircleModel> updateCircleName({
    required String circleId,
    required String newName,
  });
  Future<CircleModel> updateCircleDescription({
    required String circleId,
    required String newDescription,
  });
  Future<bool> deleteCircle(String circleId);
  Future<bool> addCircleMember({
    required String circleId,
    required String newMemberId,
  });
  Future<bool> leaveCircle({required String circleId, required String userId});
  Future<CircleModel> delegateOwner({
    required String circleId,
    required String newOwnerId,
  });
}

class CircleRepositoryImpl implements CircleRepository {
  CircleRepositoryImpl(this._ref);

  final Ref _ref;

  @override
  Future<CircleModel> createCircle({
    required String name,
    required String description,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GCreateCircleReq(
      (b) => b
        ..vars.input.replace(
          GCreateCircleInput((i) => i
            ..name = name
            ..description = description),
        ),
    );
    final data = await executeRequest(client, req);
    final c = data.create_circle;
    return CircleModel(
      id: c.id,
      name: c.name,
      description: c.description,
      ownerId: c.owner_id,
    );
  }

  @override
  Future<List<CircleModel>> getMyCircles(String uid) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetMyCirclesReq((b) => b..vars.uid = uid);
    final data = await executeRequest(client, req);
    return data.circles
        .map(
          (c) => CircleModel(
            id: c.uuid,
            name: c.name,
            description: c.description,
            ownerId: c.owner_id,
            // circle_membersにはオーナーの行が無い(オーナーはowner_idでのみ管理される)ため、
            // 表示上のメンバー数はオーナー分の+1を含める。
            memberCount:
                (c.circle_members_aggregate.aggregate?.count ?? 0) + 1,
          ),
        )
        .toList();
  }

  @override
  Future<List<CircleModel>> getAllCircles() async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetAllCirclesReq();
    final data = await executeRequest(client, req);
    return data.circles
        .map(
          (c) => CircleModel(
            id: c.uuid,
            name: c.name,
            description: c.description,
            ownerId: c.owner_id,
            memberCount:
                (c.circle_members_aggregate.aggregate?.count ?? 0) + 1,
          ),
        )
        .toList();
  }

  @override
  Future<CircleModel?> getCircle(String circleId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetCircleReq((b) => b..vars.id = circleId);
    final data = await executeRequest(client, req);
    final c = data.circles_by_pk;
    if (c == null) return null;
    return CircleModel(
      id: c.uuid,
      name: c.name,
      description: c.description,
      ownerId: c.owner_id,
      memberCount: (c.circle_members_aggregate.aggregate?.count ?? 0) + 1,
    );
  }

  @override
  Future<List<CircleMemberModel>> getCircleMembers(String circleId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetCircleMembersReq((b) => b..vars.circleId = circleId);
    final data = await executeRequest(client, req);
    return data.circle_members
        .map(
          (m) => CircleMemberModel(
            id: m.uuid,
            circleId: m.circle_uuid,
            userId: m.user_id,
            joinedDate: m.joined_date.value,
          ),
        )
        .toList();
  }

  @override
  Future<CircleModel> updateCircleName({
    required String circleId,
    required String newName,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GChangeCircleNameReq(
      (b) => b
        ..vars.input.replace(
          GChangeCircleNameInput((i) => i
            ..circle_id = circleId
            ..new_name = newName),
        ),
    );
    final data = await executeRequest(client, req);
    final c = data.change_circle_name;
    return CircleModel(
      id: c.id,
      name: c.name,
      description: c.description,
      ownerId: c.owner_id,
    );
  }

  @override
  Future<CircleModel> updateCircleDescription({
    required String circleId,
    required String newDescription,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GChangeCircleDescriptionReq(
      (b) => b
        ..vars.input.replace(
          GChangeCircleDescriptionInput((i) => i
            ..circle_id = circleId
            ..new_description = newDescription),
        ),
    );
    final data = await executeRequest(client, req);
    final c = data.change_circle_description;
    return CircleModel(
      id: c.id,
      name: c.name,
      description: c.description,
      ownerId: c.owner_id,
    );
  }

  @override
  Future<bool> deleteCircle(String circleId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GDeleteCircleReq(
      (b) => b
        ..vars.input.replace(GDeleteCircleInput((i) => i..circle_id = circleId)),
    );
    final data = await executeRequest(client, req);
    return data.delete_circle;
  }

  @override
  Future<bool> addCircleMember({
    required String circleId,
    required String newMemberId,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GAddCircleMemberReq(
      (b) => b
        ..vars.input.replace(
          GAddCircleMemberInput((i) => i
            ..circle_id = circleId
            ..new_member_id = newMemberId),
        ),
    );
    final data = await executeRequest(client, req);
    return data.add_circle_member;
  }

  @override
  Future<bool> leaveCircle({
    required String circleId,
    required String userId,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GLeaveCircleReq(
      (b) => b
        ..vars.circleId = circleId
        ..vars.userId = userId,
    );
    final data = await executeRequest(client, req);
    return (data.delete_circle_members?.affected_rows ?? 0) > 0;
  }

  @override
  Future<CircleModel> delegateOwner({
    required String circleId,
    required String newOwnerId,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GDelegateCircleOwnerReq(
      (b) => b
        ..vars.input.replace(
          GDelegateCircleOwnerInput((i) => i
            ..circle_id = circleId
            ..new_owner_id = newOwnerId),
        ),
    );
    final data = await executeRequest(client, req);
    final c = data.delegate_circle_owner;
    return CircleModel(
      id: c.id,
      name: c.name,
      description: c.description,
      ownerId: c.owner_id,
    );
  }
}
