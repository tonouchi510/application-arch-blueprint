import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/repository/circle_repository.dart';
import 'package:app/data/repository/board_repository.dart';
import 'package:app/data/repository/permission_repository.dart';
import 'package:app/data/repository/user_repository.dart';

final circleRepositoryProvider = Provider<CircleRepository>(
  (ref) => CircleRepositoryImpl(ref),
);

final boardRepositoryProvider = Provider<BoardRepository>(
  (ref) => BoardRepositoryImpl(ref),
);

final permissionRepositoryProvider = Provider<PermissionRepository>(
  (ref) => PermissionRepositoryImpl(ref),
);

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(ref),
);
