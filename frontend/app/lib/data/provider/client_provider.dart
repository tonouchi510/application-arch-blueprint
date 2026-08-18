import 'package:ferry/ferry.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/source/app_client.dart';

/// GraphQL(Ferry) Client。Authorizationヘッダーはリクエスト毎に
/// 現在のFirebaseユーザーのIDトークンから動的に付与される（app_client.dart参照）。
final graphqlClientProvider = Provider<Client>((ref) => buildAppClient());
