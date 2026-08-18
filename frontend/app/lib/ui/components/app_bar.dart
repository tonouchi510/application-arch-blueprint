import 'package:auto_route/auto_route.dart';
import 'package:app/data/provider/auth_controller.dart';
import 'package:app/ui/components/app_bar_view_model.dart';
import 'package:app/ui/route/app_router.gr.dart';
import 'package:app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';

class AppAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const AppAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    ref.watch(appBarViewModelProvider);

    return AppBar(
      title: Text(
        'サークル管理',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          color: theme.data.colorScheme.primary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: theme.data.colorScheme.surface,
      iconTheme: IconThemeData(color: theme.data.colorScheme.primary),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.logout, color: theme.data.colorScheme.primary),
          onPressed: () {
            ref.read(authControllerProvider.notifier).signOut();
            context.router.replaceAll([const SigninRoute()]);
          },
        ),
      ],
    );
  }
}
