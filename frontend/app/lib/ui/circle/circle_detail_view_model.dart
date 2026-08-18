import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/repository_provider.dart';

final circleDetailViewModelProvider =
    AsyncNotifierProvider.family<CircleDetailViewModel, CircleModel?, String>(
      (arg) => CircleDetailViewModel(arg),
    );

class CircleDetailViewModel extends AsyncNotifier<CircleModel?> {
  CircleDetailViewModel(this._circleId);

  final String _circleId;

  @override
  Future<CircleModel?> build() {
    return ref.read(circleRepositoryProvider).getCircle(_circleId);
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<void> updateName(String newName) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref
          .read(circleRepositoryProvider)
          .updateCircleName(circleId: _circleId, newName: newName),
    );
  }

  Future<void> updateDescription(String newDescription) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref
          .read(circleRepositoryProvider)
          .updateCircleDescription(
            circleId: _circleId,
            newDescription: newDescription,
          ),
    );
  }
}
