import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/ui/circle/circle_list_view_model.dart';
import 'package:app/ui/components/loading_overlay.dart';
import 'package:app/ui/route/app_router.gr.dart';

@RoutePage()
class CircleListPage extends HookConsumerWidget {
  const CircleListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(circleListViewModelProvider);
    final viewModel = ref.read(circleListViewModelProvider.notifier);

    return state.when(
      data: (circles) => LoadingOverlay(
        isLoading: false,
        child: ListView.builder(
          itemCount: circles.length,
          itemBuilder: (context, index) {
            final circle = circles[index];
            return ListTile(
              title: Text(circle.name),
              subtitle: Text(circle.description),
              onTap: () {
                context.router.push(CircleDetailRoute(circleId: circle.id));
              },
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const Text('削除'),
                    onTap: () => viewModel.deleteCircle(circle.id),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      loading: () =>
          const LoadingOverlay(isLoading: true, child: SizedBox.expand()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
