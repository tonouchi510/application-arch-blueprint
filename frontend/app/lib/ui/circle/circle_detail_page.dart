import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/circle_boards_tab.dart';
import 'package:app/ui/circle/circle_detail_view_model.dart';
import 'package:app/ui/circle/circle_members_tab.dart';
import 'package:app/ui/circle/circle_overview_tab.dart';
import 'package:app/ui/circle/circle_permission_tab.dart';
import 'package:app/ui/theme/app_theme.dart';

@RoutePage()
class CircleDetailPage extends HookConsumerWidget {
  const CircleDetailPage({super.key, @PathParam() required this.circleId});

  final String circleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(circleDetailViewModelProvider(circleId));

    return state.when(
      data: (circle) {
        if (circle == null) {
          return Scaffold(
            backgroundColor: theme.data.colorScheme.surface,
            appBar: AppBar(title: const Text('サークル')),
            body: const Center(child: Text('サークルが見つかりません')),
          );
        }

        final uid = ref.watch(currentUserIdProvider);
        final isOwner = circle.ownerId == uid;
        final tabs = [
          const Tab(text: '概要'),
          const Tab(text: 'メンバー'),
          if (isOwner) const Tab(text: '権限'),
          const Tab(text: '掲示板'),
        ];

        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            backgroundColor: theme.data.colorScheme.surface,
            appBar: AppBar(
              title: Text(circle.name),
              backgroundColor: theme.data.colorScheme.surface,
              bottom: TabBar(tabs: tabs),
            ),
            body: TabBarView(
              children: [
                CircleOverviewTab(circle: circle),
                CircleMembersTab(circle: circle),
                if (isOwner) CirclePermissionTab(circleId: circle.id),
                CircleBoardsTab(circle: circle),
              ],
            ),
          ),
        );
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) =>
          Scaffold(body: Center(child: Text('Error: $error'))),
    );
  }
}
