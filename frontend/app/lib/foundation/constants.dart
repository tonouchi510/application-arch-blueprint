import 'package:flutter/foundation.dart'
    show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'package:flutter/material.dart';

enum Flavor { local, development, production }

@immutable
class Constants {
  const Constants._({
    required this.endpoint,
    required this.appVersion,
    this.authEmulatorHost,
    this.authEmulatorPort,
  });

  final String endpoint;
  final String appVersion;

  /// Firebase Auth Emulatorの接続先。nullの場合は本番のFirebase Authに接続する。
  final String? authEmulatorHost;
  final int? authEmulatorPort;

  factory Constants.of() {
    const flavorStr = String.fromEnvironment('FLAVOR');
    final flavor = switch (flavorStr) {
      'local' => Flavor.local,
      'development' => Flavor.development,
      _ => Flavor.production,
    };

    switch (flavor) {
      case Flavor.local:
        return Constants._local();
      case Flavor.development:
        return Constants._dev();
      case Flavor.production:
        return Constants._prd();
    }
  }

  factory Constants._local() {
    // ホストマシン上で動いているcircle-service/Auth Emulatorへの接続先。
    // Web・iOSシミュレータ・macOSはホストと同じネットワーク名前空間なので
    // `localhost`で届くが、AndroidエミュレータはゲストOS扱いのため`localhost`が
    // 自分自身を指してしまう。Android SDKが用意する特殊アドレス`10.0.2.2`で
    // ホストマシンのlocalhostに転送する。
    // (実機のAndroid/iOSから繋ぐ場合はどちらも成立しないため、ホストマシンの
    //  LAN IPに読み替えること)
    final host = (!kIsWeb && defaultTargetPlatform == TargetPlatform.android)
        ? '10.0.2.2'
        : 'localhost';
    return Constants._(
      endpoint: 'http://$host:8080/v1/graphql',
      appVersion: '0.1',
      authEmulatorHost: host,
      authEmulatorPort: 9099,
    );
  }

  factory Constants._dev() {
    return const Constants._(
      endpoint: 'https://api-dev.example.com/v1/graphql',
      appVersion: '0.1',
    );
  }

  factory Constants._prd() {
    return const Constants._(
      endpoint: 'https://api.example.com/v1/graphql',
      appVersion: '0.1',
    );
  }
}
