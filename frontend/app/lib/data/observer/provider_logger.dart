import 'package:flutter/foundation.dart';
import 'package:app/foundation/riverpod_compat.dart';

/// 開発環境でProviderの状態変化をログ出力するObserver
final class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(ProviderObserverContext context, Object? value) {
    final provider = context.provider;
    debugPrint('🟢 [Provider Added] ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    final provider = context.provider;
    debugPrint(
      '🔄 [Provider Updated] ${provider.name ?? provider.runtimeType}',
    );
  }

  @override
  void didDisposeProvider(ProviderObserverContext context) {
    final provider = context.provider;
    debugPrint(
      '🔴 [Provider Disposed] ${provider.name ?? provider.runtimeType}',
    );
  }

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    final provider = context.provider;
    debugPrint(
      '❌ [Provider Failed] ${provider.name ?? provider.runtimeType}: $error',
    );
  }
}
