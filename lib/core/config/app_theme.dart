import 'package:flutter/material.dart';

class AppTheme {
  // =========================
  // DARK THEME (FROM SPEC)
  // =========================
  static const Color darkBackground = Color(0xFF15202B);
  static const Color darkSurface = Color(0xFF192734);
  static const Color darkHover = Color(0xFF23303C);
  static const Color darkPrimaryText = Color(0xFFFFFFFF);
  static const Color darkSecondaryText = Color(0xFF8898A6);

  // =========================
  // LIGHT THEME (DEFINED NOW)
  // =========================
  static const Color lightBackground = Color(0xFFF7F9FB);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightPrimary = Color(0xFF1E7F5C);
  static const Color lightPrimaryText = Color(0xFF0F172A);
  static const Color lightSecondaryText = Color(0xFF64748B);
  static const Color lightHover = Color(0xFFE2E8F0);

  // =========================
  // LIGHT THEME DATA
  // =========================
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    scaffoldBackgroundColor: lightBackground,

    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightHover,
      onSecondary: lightPrimaryText,
      surface: lightSurface,
      onSurface: lightPrimaryText,
      error: Colors.red,
      onError: Colors.white,
    ),

    cardTheme: const CardThemeData(color: lightSurface, elevation: 0),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: lightPrimaryText,
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: lightPrimaryText,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: lightPrimaryText),
      bodyMedium: TextStyle(fontSize: 14, color: lightSecondaryText),
    ),
  );

  // =========================
  // DARK THEME DATA
  // =========================
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: darkBackground,

    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: darkPrimaryText,
      onPrimary: darkBackground,
      secondary: darkHover,
      onSecondary: darkPrimaryText,
      surface: darkSurface,
      onSurface: darkPrimaryText,
      error: Colors.red,
      onError: darkPrimaryText,
    ),

    cardTheme: const CardThemeData(color: darkSurface, elevation: 0),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: darkPrimaryText,
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: darkPrimaryText,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: darkPrimaryText),
      bodyMedium: TextStyle(fontSize: 14, color: darkSecondaryText),
    ),
  );
}
