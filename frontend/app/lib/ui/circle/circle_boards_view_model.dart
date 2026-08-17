import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/board.dart';
import 'package:app/data/provider/repository_provider.dart';

final circleBoardsViewModelProvider =
    AsyncNotifierProvider.family<CircleBoardsViewModel, List<BoardModel>, String>(
      (arg) => CircleBoardsViewModel(arg),
    );

class CircleBoardsViewModel extends AsyncNotifier<List<BoardModel>> {
  CircleBoardsViewModel(this._circleId);

  final String _circleId;

  static const maxBoardPosts = 100;

  @override
  Future<List<BoardModel>> build() {
    return ref.read(boardRepositoryProvider).getCircleBoards(_circleId);
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<void> createBoard(String topic) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(boardRepositoryProvider)
          .createBoard(circleId: _circleId, topic: topic);
      return ref.read(boardRepositoryProvider).getCircleBoards(_circleId);
    });
  }
}
