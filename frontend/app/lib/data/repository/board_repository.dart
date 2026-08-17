import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/board.dart';
import 'package:app/data/provider/client_provider.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/data/source/graphql_helpers.dart';
import 'package:app/data/graphql/__generated__/board.req.gql.dart';
import 'package:app/data/graphql/__generated__/schema.schema.gql.dart';

abstract class BoardRepository {
  Future<BoardModel> createBoard({
    required String circleId,
    required String topic,
  });
  Future<List<BoardModel>> getCircleBoards(String circleId);
  Future<List<PostModel>> getBoardPosts(String boardId);
  Future<BoardModel> updateBoardTopic({
    required String boardId,
    required String circleId,
    required String newTopic,
  });
  Future<BoardModel> updateBoardStatus({
    required String boardId,
    required String circleId,
    required int newStatus,
  });
  Future<bool> deleteBoard({required String boardId, required String circleId});
  Future<void> addPost({
    required String boardId,
    required String circleId,
    required String content,
  });
}

class BoardRepositoryImpl implements BoardRepository {
  BoardRepositoryImpl(this._ref);

  final Ref _ref;

  @override
  Future<BoardModel> createBoard({
    required String circleId,
    required String topic,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GCreateBoardReq(
      (b) => b
        ..vars.input.replace(
          GCreateBoardInput((i) => i
            ..circle_id = circleId
            ..topic = topic),
        ),
    );
    final data = await executeRequest(client, req);
    final board = data.create_board;
    return BoardModel(
      id: board.id,
      circleId: board.circle_uuid,
      ownerId: '',
      topic: board.topic,
      status: int.parse(board.status),
    );
  }

  @override
  Future<List<BoardModel>> getCircleBoards(String circleId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetCircleBoardsReq((b) => b..vars.circleId = circleId);
    final data = await executeRequest(client, req);
    return data.boards
        .map(
          (b) => BoardModel(
            id: b.uuid,
            circleId: b.circle_uuid,
            ownerId: b.owner_id,
            topic: b.topic,
            status: b.status,
            postCount: b.posts_aggregate.aggregate?.count ?? 0,
          ),
        )
        .toList();
  }

  @override
  Future<List<PostModel>> getBoardPosts(String boardId) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GGetBoardPostsReq((b) => b..vars.boardId = boardId);
    final data = await executeRequest(client, req);
    return data.posts
        .map(
          (p) => PostModel(
            id: p.uuid,
            boardId: p.board_uuid,
            userId: p.user_id,
            content: p.content,
            createdAt: p.created_at,
          ),
        )
        .toList();
  }

  @override
  Future<BoardModel> updateBoardTopic({
    required String boardId,
    required String circleId,
    required String newTopic,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GChangeBoardTopicReq(
      (b) => b
        ..vars.input.replace(
          GChangeBoardTopicInput((i) => i
            ..board_id = boardId
            ..circle_id = circleId
            ..new_topic = newTopic),
        ),
    );
    final data = await executeRequest(client, req);
    final board = data.change_board_topic;
    return BoardModel(
      id: board.id,
      circleId: board.circle_uuid,
      ownerId: '',
      topic: board.topic,
      status: int.parse(board.status),
    );
  }

  @override
  Future<BoardModel> updateBoardStatus({
    required String boardId,
    required String circleId,
    required int newStatus,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GChangeBoardStatusReq(
      (b) => b
        ..vars.input.replace(
          GChangeBoardStatusInput((i) => i
            ..board_id = boardId
            ..circle_id = circleId
            ..new_status = newStatus),
        ),
    );
    final data = await executeRequest(client, req);
    final board = data.change_board_status;
    return BoardModel(
      id: board.id,
      circleId: board.circle_uuid,
      ownerId: '',
      topic: board.topic,
      status: int.parse(board.status),
    );
  }

  @override
  Future<bool> deleteBoard({
    required String boardId,
    required String circleId,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final req = GDeleteBoardReq(
      (b) => b
        ..vars.input.replace(
          GDeleteBoardInput((i) => i
            ..board_id = boardId
            ..circle_id = circleId),
        ),
    );
    final data = await executeRequest(client, req);
    return data.delete_board;
  }

  @override
  Future<void> addPost({
    required String boardId,
    required String circleId,
    required String content,
  }) async {
    final client = _ref.read(graphqlClientProvider);
    final userId = _ref.read(currentUserIdProvider);
    if (userId == null) {
      throw StateError('サインインしていません');
    }
    final req = GAddBoardPostReq(
      (b) => b
        ..vars.input.replace(
          GAddBoardPostInput((i) => i
            ..board_id = boardId
            ..circle_id = circleId
            ..user_id = userId
            ..content = content),
        ),
    );
    await executeRequest(client, req);
  }
}
