import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appThemeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);

final appThemeProvider = Provider<AppTheme>((ref) {
  final mode = ref.watch(appThemeModeProvider);
  switch (mode) {
    case ThemeMode.dark:
      return AppTheme.dark();
    case ThemeMode.light:
    default:
      return AppTheme.light();
  }
});

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.light;

  void setThemeMode(ThemeMode mode) {
    state = mode;
  }
}

class AppTheme {
  AppTheme({required this.mode, required this.data});

  final ThemeMode mode;
  final ThemeData data;

  factory AppTheme.light() {
    const mode = ThemeMode.light;
    final themeData = ThemeData.light().copyWith(
      textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.light,
      ),
    );
    return AppTheme(mode: mode, data: themeData);
  }

  factory AppTheme.dark() {
    const mode = ThemeMode.dark;
    final themeData = ThemeData.dark().copyWith(
      textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
    );
    return AppTheme(mode: mode, data: themeData);
  }
}
