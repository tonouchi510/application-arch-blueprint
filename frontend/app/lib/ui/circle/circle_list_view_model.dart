import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/repository_provider.dart';

final circleListViewModelProvider =
    AsyncNotifierProvider<CircleListViewModel, List<CircleModel>>(
      CircleListViewModel.new,
    );

class CircleListViewModel extends AsyncNotifier<List<CircleModel>> {
  @override
  Future<List<CircleModel>> build() {
    return ref.read(circleRepositoryProvider).getCircles();
  }

  Future<void> createCircle({
    required String name,
    required String description,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(circleRepositoryProvider)
          .createCircle(name: name, description: description);
      return ref.read(circleRepositoryProvider).getCircles();
    });
  }

  Future<void> deleteCircle(String circleId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(circleRepositoryProvider).deleteCircle(circleId);
      return ref.read(circleRepositoryProvider).getCircles();
    });
  }
}
