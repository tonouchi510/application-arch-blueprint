import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/constants.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/observer/provider_logger.dart';
import 'package:app/firebase_options.dart';
import 'package:app/ui/route/app_router.dart';
import 'package:app/ui/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final constants = Constants.of();
  final emulatorHost = constants.authEmulatorHost;
  final emulatorPort = constants.authEmulatorPort;
  if (emulatorHost != null && emulatorPort != null) {
    await FirebaseAuth.instance.useAuthEmulator(emulatorHost, emulatorPort);
  }

  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);

  // 開発環境でのみProviderObserverを追加
  runApp(
    ProviderScope(
      observers: kDebugMode ? [ProviderLogger()] : [],
      child: const App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(appThemeProvider);
    final themeMode = ref.read(appThemeModeProvider);
    final authGuard = ref.read(authGuardProvider);
    final appRouter = AppRouter(authGuard);

    return MaterialApp.router(
      title: 'Circle Management App',
      theme: theme.data,
      darkTheme: AppTheme.light().data,
      themeMode: themeMode,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      locale: const Locale('ja', 'JP'),
    );
  }
}
