import 'package:flutter/material.dart';

enum Flavor { local, development, production }

@immutable
class Constants {
  const Constants._({required this.endpoint, required this.appVersion});

  final String endpoint;
  final String appVersion;

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
    return const Constants._(
      endpoint: 'http://localhost:8080/v1/graphql',
      appVersion: '0.1',
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
