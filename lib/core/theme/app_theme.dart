import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color crimson = Color(0xFFA4554A);
  static const Color background = Color(0xFF111111);
  static const Color surface = Color(0xFF1B1B1B);

  static ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,

      scaffoldBackgroundColor: background,

      fontFamily: 'Sora',

      colorScheme: const ColorScheme.dark(
        primary: crimson,
        secondary: crimson,
        surface: surface,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: crimson,
          foregroundColor: Colors.white,
          minimumSize: const Size(0, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
        ),
      ),

      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 72,
          letterSpacing: 2,
        ),

        displayMedium: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 56,
          letterSpacing: 2,
        ),

        displaySmall: TextStyle(
          fontFamily: 'BebasNeue',
          fontSize: 42,
          letterSpacing: 2,
        ),

        headlineLarge: TextStyle(
          fontSize: 44,
          fontWeight: FontWeight.bold,
        ),

        headlineMedium: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),

        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),

        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),

        bodyLarge: TextStyle(
          fontSize: 17,
          height: 1.7,
        ),

        bodyMedium: TextStyle(
          fontSize: 15,
          height: 1.6,
        ),
      ),
    );
  }

  static ThemeData get light => dark;
}