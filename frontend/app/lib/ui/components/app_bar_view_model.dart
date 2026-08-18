import 'package:app/foundation/riverpod_compat.dart';

final appBarViewModelProvider =
    NotifierProvider<AppBarViewModel, AppBarViewModelState>(
      AppBarViewModel.new,
    );

class AppBarViewModelState {
  const AppBarViewModelState();
}

class AppBarViewModel extends Notifier<AppBarViewModelState> {
  @override
  AppBarViewModelState build() => const AppBarViewModelState();
}
