class ServiceError {
  late final String code;
  late final String message;

  ServiceError(this.message, this.code);

  ServiceError.fromErrorString(String errorStr) {
    RegExp regex = RegExp(r'Code: ([^,]+), Msg: (.+)');
    Match? match = regex.firstMatch(errorStr);

    if (match != null) {
      code = match.group(1)!;
      message = match.group(2)!;
    } else {
      code = '';
      message = errorStr;
    }
  }

  String toDisplayMessage({String fallback = 'エラーが発生しました'}) {
    return _containsJapanese(message) ? message : fallback;
  }

  bool _containsJapanese(String value) {
    return RegExp(r'[\u3040-\u30ff\u3400-\u4dbf\u4e00-\u9fff]').hasMatch(value);
  }
}
