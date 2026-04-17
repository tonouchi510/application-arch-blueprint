import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/repository/circle_repository.dart';
import 'package:app/data/repository/board_repository.dart';

final circleRepositoryProvider = Provider<CircleRepository>(
  (ref) => CircleRepositoryImpl(ref),
);

final boardRepositoryProvider = Provider<BoardRepository>(
  (ref) => BoardRepositoryImpl(ref),
);
