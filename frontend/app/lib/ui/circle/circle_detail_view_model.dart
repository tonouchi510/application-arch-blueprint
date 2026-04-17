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
}
