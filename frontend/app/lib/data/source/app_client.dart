import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:app/foundation/constants.dart';

Client initClient(String? token) {
  final endpoint = Constants.of().endpoint;
  final HttpLink link;
  if (token != null) {
    final headers = <String, String>{'Authorization': 'Bearer $token'};
    link = HttpLink(endpoint, defaultHeaders: headers);
  } else {
    link = HttpLink(endpoint);
  }
  final cache = Cache();
  return Client(link: link, cache: cache);
}
