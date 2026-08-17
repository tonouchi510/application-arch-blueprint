import 'package:ferry/ferry.dart';

/// FerryのOperationRequestを実行し、最初に確定したレスポンス(データ/エラー/通信例外の
/// いずれかを含むレスポンス)のdataを返す。
///
/// `loading == false`になるのを待つと、Ferryはエラー応答でも`loading: true`のまま
/// 後続イベントを送らないことがあり、その場合Futureが永久に解決しない
/// (アプリ側は無限ローディング状態に見える)。そのため`loading`フラグではなく
/// 「data/graphqlErrors/linkExceptionのいずれかが埋まっているか」で確定を判定する。
///
/// GraphQLエラー・通信エラー・データなしはすべて例外として投げる。
Future<TData> executeRequest<TData, TVars>(
  Client client,
  OperationRequest<TData, TVars> request,
) async {
  final response = await client.request(request).firstWhere(
    (r) =>
        r.data != null ||
        (r.graphqlErrors?.isNotEmpty ?? false) ||
        r.linkException != null,
  );

  if (response.linkException != null) {
    throw Exception(response.linkException.toString());
  }
  if (response.graphqlErrors != null && response.graphqlErrors!.isNotEmpty) {
    throw Exception(response.graphqlErrors!.map((e) => e.message).join('; '));
  }
  final data = response.data;
  if (data == null) {
    throw Exception('No data returned');
  }
  return data;
}
