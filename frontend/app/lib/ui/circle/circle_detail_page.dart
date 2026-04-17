import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/ui/circle/circle_detail_view_model.dart';
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
      data: (circle) => Scaffold(
        backgroundColor: theme.data.colorScheme.surface,
        appBar: AppBar(
          title: Text(circle?.name ?? 'Circle Detail'),
          backgroundColor: theme.data.colorScheme.surface,
        ),
        body: circle == null
            ? const Center(child: Text('サークルが見つかりません'))
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      circle.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(circle.description),
                  ],
                ),
              ),
      ),
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (error, stack) =>
          Scaffold(body: Center(child: Text('Error: $error'))),
    );
  }
}
