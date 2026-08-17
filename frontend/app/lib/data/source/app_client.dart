import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:app/foundation/constants.dart';

/// リクエストごとに現在のFirebaseユーザーのIDトークンを取得し、
/// `Authorization: Bearer <token>`ヘッダーを付与するLink。
Link _authLink() {
  return Link.function((request, [forward]) async* {
    final user = FirebaseAuth.instance.currentUser;
    final token = await user?.getIdToken();

    final authorizedRequest = token == null
        ? request
        : request.updateContextEntry<HttpLinkHeaders>(
            (headers) => HttpLinkHeaders(
              headers: {...?headers?.headers, 'Authorization': 'Bearer $token'},
            ),
          );

    yield* forward!(authorizedRequest);
  });
}

Client buildAppClient() {
  final endpoint = Constants.of().endpoint;
  final link = Link.concat(_authLink(), HttpLink(endpoint));
  return Client(
    link: link,
    cache: Cache(),
    // Ferryのクエリのデフォルトは`FetchPolicy.CacheFirst`。サークル一覧などの
    // リスト系クエリはキャッシュされたエンティティを合成して返すため、
    // ミューテーション後もキャッシュ側が更新されず古い一覧を返し続けてしまう。
    // このアプリはオフライン対応が不要なため、クエリは常にネットワークから
    // 取得するようにする。
    defaultFetchPolicies: const {OperationType.query: FetchPolicy.NetworkOnly},
  );
}
