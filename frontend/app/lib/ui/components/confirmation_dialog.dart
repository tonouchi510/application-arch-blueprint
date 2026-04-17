import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/ui/theme/app_theme.dart';

class ConfirmationDialog extends HookConsumerWidget {
  const ConfirmationDialog({
    super.key,
    required this.message,
    this.okText = 'OK',
    this.ngText = 'CANCEL',
  });

  final String message;
  final String okText;
  final String ngText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AlertDialog(
      title: SelectableText(
        message,
        style: TextStyle(fontSize: 18, color: theme.data.colorScheme.onPrimary),
      ),
      backgroundColor: theme.data.colorScheme.primary,
      actions: [
        TextButton(
          child: Text(
            ngText,
            style: TextStyle(
              fontSize: 16,
              color: theme.data.colorScheme.onPrimary,
            ),
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
        TextButton(
          child: Text(
            okText,
            style: TextStyle(
              fontSize: 16,
              color: theme.data.colorScheme.onPrimary,
            ),
          ),
          onPressed: () => Navigator.pop(context, true),
        ),
      ],
    );
  }
}
