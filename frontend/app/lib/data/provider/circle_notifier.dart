import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/repository/circle_repository.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/repository_provider.dart';

final circlesNotifierProvider =
    NotifierProvider<CirclesNotifier, AsyncValue<List<CircleModel>>>(
      CirclesNotifier.new,
    );

class CirclesNotifier extends Notifier<AsyncValue<List<CircleModel>>> {
  late final CircleRepository _repository;

  @override
  AsyncValue<List<CircleModel>> build() {
    _repository = ref.watch(circleRepositoryProvider);
    _fetchCircles();
    return const AsyncValue.loading();
  }

  Future<void> _fetchCircles() async {
    state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() => _repository.getCircles());
    state = result;
  }

  Future<void> createCircle({
    required String name,
    required String description,
  }) async {
    state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async {
      await _repository.createCircle(name: name, description: description);
      return _repository.getCircles();
    });
    state = result;
  }

  Future<void> deleteCircle(String circleId) async {
    state = const AsyncValue.loading();
    final result = await AsyncValue.guard(() async {
      await _repository.deleteCircle(circleId);
      return _repository.getCircles();
    });
    state = result;
  }
}
