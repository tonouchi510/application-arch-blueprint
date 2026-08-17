import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/repository_provider.dart';

final circlePermissionViewModelProvider =
    AsyncNotifierProvider.family<CirclePermissionViewModel, bool?, String>(
      (arg) => CirclePermissionViewModel(arg),
    );

/// メンバーによる掲示板作成が許可されているか(permission_board_creation)。
/// レコード未作成の場合はnull（未許可として扱う）。
class CirclePermissionViewModel extends AsyncNotifier<bool?> {
  CirclePermissionViewModel(this._circleId);

  final String _circleId;

  @override
  Future<bool?> build() {
    return ref
        .read(permissionRepositoryProvider)
        .getBoardCreationPermission(_circleId);
  }

  Future<void> setBoardCreationAllowed(bool allowed) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref
          .read(permissionRepositoryProvider)
          .changeBoardCreationPermission(circleId: _circleId, allowed: allowed);
      return allowed;
    });
  }
}
