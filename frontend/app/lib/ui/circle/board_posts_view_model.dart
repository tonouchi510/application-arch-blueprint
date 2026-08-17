import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/board.dart';
import 'package:app/data/provider/repository_provider.dart';

class BoardPostsArg {
  const BoardPostsArg({required this.circleId, required this.boardId});

  final String circleId;
  final String boardId;

  @override
  bool operator ==(Object other) =>
      other is BoardPostsArg &&
      other.circleId == circleId &&
      other.boardId == boardId;

  @override
  int get hashCode => Object.hash(circleId, boardId);
}

final boardPostsViewModelProvider = AsyncNotifierProvider.family<
    BoardPostsViewModel, List<PostModel>, BoardPostsArg>(
  (arg) => BoardPostsViewModel(arg),
);

class BoardPostsViewModel extends AsyncNotifier<List<PostModel>> {
  BoardPostsViewModel(this._arg);

  final BoardPostsArg _arg;

  @override
  Future<List<PostModel>> build() {
    return ref.read(boardRepositoryProvider).getBoardPosts(_arg.boardId);
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<void> addPost(String content) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(boardRepositoryProvider)
          .addPost(boardId: _arg.boardId, circleId: _arg.circleId, content: content);
      return ref.read(boardRepositoryProvider).getBoardPosts(_arg.boardId);
    });
  }

  Future<void> changeTopic(String newTopic) async {
    await ref
        .read(boardRepositoryProvider)
        .updateBoardTopic(
          boardId: _arg.boardId,
          circleId: _arg.circleId,
          newTopic: newTopic,
        );
  }

  Future<void> changeStatus(int newStatus) async {
    await ref
        .read(boardRepositoryProvider)
        .updateBoardStatus(
          boardId: _arg.boardId,
          circleId: _arg.circleId,
          newStatus: newStatus,
        );
  }
}
