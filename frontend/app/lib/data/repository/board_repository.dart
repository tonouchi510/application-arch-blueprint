import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/board.dart';

abstract class BoardRepository {
  Future<BoardModel> createBoard({
    required String circleId,
    required String topic,
  });
  Future<List<BoardModel>> getCircleBoards(String circleId);
  Future<BoardModel> getBoard(String boardId);
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
  Future<BoardModel> addPost({
    required String boardId,
    required String circleId,
    required String userId,
    required String content,
  });
}

class BoardRepositoryImpl implements BoardRepository {
  BoardRepositoryImpl(this._ref);

  // ignore: unused_field
  final Ref _ref;

  @override
  Future<BoardModel> createBoard({
    required String circleId,
    required String topic,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<List<BoardModel>> getCircleBoards(String circleId) async {
    // TODO: Implement GraphQL query call
    throw UnimplementedError();
  }

  @override
  Future<BoardModel> getBoard(String boardId) async {
    // TODO: Implement GraphQL query call
    throw UnimplementedError();
  }

  @override
  Future<BoardModel> updateBoardTopic({
    required String boardId,
    required String circleId,
    required String newTopic,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<BoardModel> updateBoardStatus({
    required String boardId,
    required String circleId,
    required int newStatus,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteBoard({
    required String boardId,
    required String circleId,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<BoardModel> addPost({
    required String boardId,
    required String circleId,
    required String userId,
    required String content,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }
}
