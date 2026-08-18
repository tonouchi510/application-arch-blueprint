import 'package:app/ui/hook/use_router.dart';
import 'package:app/ui/route/app_router.gr.dart';
import 'package:app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';

class AppDrawer extends HookConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final router = useRouter();

    return Drawer(
      backgroundColor: theme.data.colorScheme.primary,
      width: 280.0,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: theme.data.colorScheme.primary),
            child: Text(
              'Circle Management',
              style: TextStyle(
                color: theme.data.colorScheme.onPrimary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'サークル一覧',
              style: TextStyle(
                fontSize: 18.0,
                color: theme.data.colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: theme.data.colorScheme.onPrimary,
            ),
            onTap: () => router.pushAndPopUntil(
              const CircleListRoute(),
              predicate: ((_) => false),
            ),
          ),
          ListTile(
            title: Text(
              'ユーザー設定',
              style: TextStyle(
                fontSize: 18.0,
                color: theme.data.colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: theme.data.colorScheme.onPrimary,
            ),
            onTap: () => router.push(const UserSettingsRoute()),
          ),
        ],
      ),
    );
  }
}
