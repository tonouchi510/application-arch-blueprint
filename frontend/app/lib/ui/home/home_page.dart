import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/ui/components/app_bar.dart';
import 'package:app/ui/components/drawer.dart';
import 'package:app/ui/theme/app_theme.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: const AppAppBar(),
      drawer: const AppDrawer(),
      backgroundColor: theme.data.colorScheme.surface,
      body: const AutoRouter(),
    );
  }
}
