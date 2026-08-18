import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/repository_provider.dart';
import 'package:app/ui/circle/circle_detail_view_model.dart';

final circleMembersViewModelProvider = AsyncNotifierProvider.family<
    CircleMembersViewModel, List<CircleMemberModel>, String>(
  (arg) => CircleMembersViewModel(arg),
);

class CircleMembersViewModel
    extends AsyncNotifier<List<CircleMemberModel>> {
  CircleMembersViewModel(this._circleId);

  final String _circleId;

  @override
  Future<List<CircleMemberModel>> build() {
    return ref.read(circleRepositoryProvider).getCircleMembers(_circleId);
  }

  Future<void> _refresh() async {
    state = await AsyncValue.guard(
      () => ref.read(circleRepositoryProvider).getCircleMembers(_circleId),
    );
  }

  Future<void> addMember(String userId) async {
    state = const AsyncValue.loading();
    await ref
        .read(circleRepositoryProvider)
        .addCircleMember(circleId: _circleId, newMemberId: userId);
    await _refresh();
  }

  Future<void> leave(String userId) async {
    state = const AsyncValue.loading();
    await ref
        .read(circleRepositoryProvider)
        .leaveCircle(circleId: _circleId, userId: userId);
    await _refresh();
  }

  Future<void> delegateOwner(String newOwnerId) async {
    state = const AsyncValue.loading();
    await ref
        .read(circleRepositoryProvider)
        .delegateOwner(circleId: _circleId, newOwnerId: newOwnerId);
    await _refresh();
    ref.invalidate(circleDetailViewModelProvider(_circleId));
  }
}
