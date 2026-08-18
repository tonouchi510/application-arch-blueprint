import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/repository_provider.dart';
import 'package:app/data/provider/user.dart';

/// サークル一覧ページの検索キーワード（クライアントサイドfilter用）
final circleSearchQueryProvider = StateProvider<String>((ref) => '');

final myCirclesViewModelProvider =
    AsyncNotifierProvider<MyCirclesViewModel, List<CircleModel>>(
      MyCirclesViewModel.new,
    );

class MyCirclesViewModel extends AsyncNotifier<List<CircleModel>> {
  @override
  Future<List<CircleModel>> build() async {
    final uid = ref.watch(currentUserIdProvider);
    if (uid == null) return [];
    return ref.read(circleRepositoryProvider).getMyCircles(uid);
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
    await future;
  }

  Future<void> deleteCircle(String circleId) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(circleRepositoryProvider).deleteCircle(circleId);
      final uid = ref.read(currentUserIdProvider);
      if (uid == null) return [];
      return ref.read(circleRepositoryProvider).getMyCircles(uid);
    });
    ref.invalidate(allCirclesViewModelProvider);
  }

  Future<void> leaveCircle(String circleId) async {
    final uid = ref.read(currentUserIdProvider);
    if (uid == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(circleRepositoryProvider)
          .leaveCircle(circleId: circleId, userId: uid);
      return ref.read(circleRepositoryProvider).getMyCircles(uid);
    });
    ref.invalidate(allCirclesViewModelProvider);
  }
}

final allCirclesViewModelProvider =
    AsyncNotifierProvider<AllCirclesViewModel, List<CircleModel>>(
      AllCirclesViewModel.new,
    );

class AllCirclesViewModel extends AsyncNotifier<List<CircleModel>> {
  @override
  Future<List<CircleModel>> build() {
    return ref.read(circleRepositoryProvider).getAllCircles();
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
      return ref.read(circleRepositoryProvider).getAllCircles();
    });
    ref.invalidate(myCirclesViewModelProvider);
  }

  /// 未参加サークルへの参加（誰でも参加可能）
  Future<void> joinCircle(String circleId) async {
    final uid = ref.read(currentUserIdProvider);
    if (uid == null) return;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(circleRepositoryProvider)
          .addCircleMember(circleId: circleId, newMemberId: uid);
      return ref.read(circleRepositoryProvider).getAllCircles();
    });
    ref.invalidate(myCirclesViewModelProvider);
  }
}
