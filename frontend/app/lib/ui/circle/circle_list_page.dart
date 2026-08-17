import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/data/model/circle.dart';
import 'package:app/data/provider/user.dart';
import 'package:app/ui/circle/circle_list_view_model.dart';
import 'package:app/ui/components/confirmation_dialog.dart';
import 'package:app/ui/components/error_dialog.dart';
import 'package:app/ui/components/loading_overlay.dart';
import 'package:app/ui/route/app_router.gr.dart';

const _maxCircleMembers = 30;

@RoutePage()
class CircleListPage extends HookConsumerWidget {
  const CircleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    final role = ref.watch(currentUserRoleProvider).value;
    final canCreateCircle = role == 'premium' || role == 'admin';

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: const [Tab(text: '参加中のサークル'), Tab(text: 'サークルを探す')],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: _CircleSearchField(),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [_MyCirclesTab(), _AllCirclesTab()],
            ),
          ),
        ],
      ),
      floatingActionButton: canCreateCircle
          ? FloatingActionButton(
              tooltip: 'サークルを作成',
              onPressed: () => _showCreateCircleDialog(context, ref),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }

  Future<void> _showCreateCircleDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('サークルを作成'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'サークル名'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: '説明'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('作成'),
          ),
        ],
      ),
    );

    if (result != true || !context.mounted) return;
    if (nameController.text.trim().isEmpty) return;

    try {
      await ref
          .read(allCirclesViewModelProvider.notifier)
          .createCircle(
            name: nameController.text.trim(),
            description: descriptionController.text.trim(),
          );
    } catch (e) {
      if (context.mounted) await showErrorDialog(context, e.toString());
    }
  }
}

class _CircleSearchField extends HookConsumerWidget {
  const _CircleSearchField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'サークル名で検索',
        border: OutlineInputBorder(),
        isDense: true,
      ),
      onChanged: (value) =>
          ref.read(circleSearchQueryProvider.notifier).state = value,
    );
  }
}

List<CircleModel> _filterBySearch(List<CircleModel> circles, String query) {
  if (query.isEmpty) return circles;
  return circles
      .where((c) => c.name.toLowerCase().contains(query.toLowerCase()))
      .toList();
}

class _MyCirclesTab extends HookConsumerWidget {
  const _MyCirclesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myCirclesViewModelProvider);
    final query = ref.watch(circleSearchQueryProvider);
    final uid = ref.watch(currentUserIdProvider);
    final viewModel = ref.read(myCirclesViewModelProvider.notifier);

    return state.when(
      data: (circles) {
        final filtered = _filterBySearch(circles, query);
        if (circles.isEmpty) {
          return const _EmptyMessage('参加しているサークルがありません。\n「サークルを探す」タブから探してみましょう');
        }
        if (filtered.isEmpty) {
          return const _EmptyMessage('該当するサークルが見つかりません');
        }
        return LoadingOverlay(
          isLoading: false,
          child: RefreshIndicator(
            onRefresh: viewModel.refresh,
            child: ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final circle = filtered[index];
                final isOwner = circle.ownerId == uid;
                return ListTile(
                  title: Text(circle.name),
                  subtitle: Text(circle.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${circle.memberCount}/$_maxCircleMembers'),
                      if (isOwner)
                        PopupMenuButton<String>(
                          onSelected: (value) async {
                            if (value == 'delete') {
                              final confirmed = await showDialog<bool>(
                                context: context,
                                builder: (_) => const ConfirmationDialog(
                                  message: 'このサークルを削除しますか？',
                                ),
                              );
                              if (confirmed == true) {
                                await viewModel.deleteCircle(circle.id);
                              }
                            }
                          },
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'delete',
                              child: Text('削除'),
                            ),
                          ],
                        ),
                    ],
                  ),
                  onTap: () =>
                      context.router.push(CircleDetailRoute(circleId: circle.id)),
                );
              },
            ),
          ),
        );
      },
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}

class _AllCirclesTab extends HookConsumerWidget {
  const _AllCirclesTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allCirclesViewModelProvider);
    final query = ref.watch(circleSearchQueryProvider);
    final myCircles = ref.watch(myCirclesViewModelProvider).value ?? [];
    final myCircleIds = myCircles.map((c) => c.id).toSet();
    final viewModel = ref.read(allCirclesViewModelProvider.notifier);

    return state.when(
      data: (circles) {
        final filtered = _filterBySearch(circles, query);
        if (filtered.isEmpty) {
          return const _EmptyMessage('該当するサークルが見つかりません');
        }
        return LoadingOverlay(
          isLoading: false,
          child: ListView.builder(
            itemCount: filtered.length,
            itemBuilder: (context, index) {
              final circle = filtered[index];
              final alreadyJoined = myCircleIds.contains(circle.id);
              final isFull = circle.memberCount >= _maxCircleMembers;

              return ListTile(
                title: Text(circle.name),
                subtitle: Text(circle.description),
                trailing: alreadyJoined
                    ? Text('${circle.memberCount}/$_maxCircleMembers')
                    : FilledButton(
                        onPressed: isFull
                            ? null
                            : () async {
                                try {
                                  await viewModel.joinCircle(circle.id);
                                } catch (e) {
                                  if (context.mounted) {
                                    await showErrorDialog(context, e.toString());
                                  }
                                }
                              },
                        child: Text(isFull ? '満員' : '参加'),
                      ),
                onTap: () =>
                    context.router.push(CircleDetailRoute(circleId: circle.id)),
              );
            },
          ),
        );
      },
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}

class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(message, textAlign: TextAlign.center),
      ),
    );
  }
}
