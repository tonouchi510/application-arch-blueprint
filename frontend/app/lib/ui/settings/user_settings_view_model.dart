import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/data/provider/repository_provider.dart';

final userSettingsViewModelProvider =
    AsyncNotifierProvider<UserSettingsViewModel, void>(
      UserSettingsViewModel.new,
    );

class UserSettingsViewModel extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<void> saveProfile({
    String? name,
    String? phoneNumber,
    String? photoUrl,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => ref
          .read(userRepositoryProvider)
          .updateProfile(
            name: name,
            phoneNumber: phoneNumber,
            photoUrl: photoUrl,
          ),
    );
  }

  /// 退会。成功したらサインアウトする。
  Future<bool> deleteAccount() async {
    final uid = ref.read(authControllerProvider)?.uid;
    if (uid == null) return false;

    state = const AsyncValue.loading();
    var succeeded = false;
    state = await AsyncValue.guard(() async {
      succeeded = await ref.read(userRepositoryProvider).deleteAccount(uid);
    });
    if (succeeded) {
      ref.read(authControllerProvider.notifier).signOut();
    }
    return succeeded;
  }
}
