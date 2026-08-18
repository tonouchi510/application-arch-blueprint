import 'package:flutter/material.dart';
import 'package:app/foundation/riverpod_compat.dart';
import 'package:app/foundation/error_msg.dart';
import 'package:app/ui/theme/app_theme.dart';

Future<void> showErrorDialog(BuildContext context, String message) async {
  return await showDialog(
    context: context,
    builder: (context) => ErrorDialog(message: message),
  );
}

class ErrorDialog extends HookConsumerWidget {
  const ErrorDialog({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final err = ServiceError.fromErrorString(message);

    return AlertDialog(
      title: Text(
        'エラー',
        style: TextStyle(fontSize: 18, color: theme.data.colorScheme.onPrimary),
      ),
      backgroundColor: theme.data.colorScheme.primary,
      content: SelectableText(
        err.toDisplayMessage(),
        style: TextStyle(fontSize: 16, color: theme.data.colorScheme.onPrimary),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Close',
            style: TextStyle(
              fontSize: 16,
              color: theme.data.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
