import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';

abstract class CircleRepository {
  Future<CircleModel> createCircle({
    required String name,
    required String description,
  });
  Future<List<CircleModel>> getCircles();
  Future<CircleModel> getCircle(String circleId);
  Future<CircleModel> updateCircleName({
    required String circleId,
    required String newName,
  });
  Future<CircleModel> updateCircleDescription({
    required String circleId,
    required String newDescription,
  });
  Future<bool> deleteCircle(String circleId);
  Future<bool> addCircleMember({
    required String circleId,
    required String newMemberId,
  });
  Future<CircleModel> delegateOwner({
    required String circleId,
    required String newOwnerId,
  });
}

class CircleRepositoryImpl implements CircleRepository {
  CircleRepositoryImpl(this._ref);

  // ignore: unused_field
  final Ref _ref;

  @override
  Future<CircleModel> createCircle({
    required String name,
    required String description,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<List<CircleModel>> getCircles() async {
    // TODO: Implement GraphQL query call
    throw UnimplementedError();
  }

  @override
  Future<CircleModel> getCircle(String circleId) async {
    // TODO: Implement GraphQL query call
    throw UnimplementedError();
  }

  @override
  Future<CircleModel> updateCircleName({
    required String circleId,
    required String newName,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<CircleModel> updateCircleDescription({
    required String circleId,
    required String newDescription,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteCircle(String circleId) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<bool> addCircleMember({
    required String circleId,
    required String newMemberId,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }

  @override
  Future<CircleModel> delegateOwner({
    required String circleId,
    required String newOwnerId,
  }) async {
    // TODO: Implement GraphQL mutation call
    throw UnimplementedError();
  }
}
