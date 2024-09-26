import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final AppTheme instance = AppTheme._();
  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
        bodySmall: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
        displayLarge: TextStyle(color: Colors.black),
        displaySmall: TextStyle(color: Colors.black),
        displayMedium: TextStyle(color: Colors.black),
        headlineLarge: TextStyle(color: Colors.black),
        headlineMedium: TextStyle(color: Colors.black),
        headlineSmall: TextStyle(color: Colors.black),
        labelLarge: TextStyle(color: Colors.black),
        labelMedium: TextStyle(color: Colors.black),
        labelSmall: TextStyle(color: Colors.black),
        titleLarge: TextStyle(color: Colors.black),
        titleMedium: TextStyle(color: Colors.black),
        titleSmall: TextStyle(color: Colors.black)),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        primary: const Color(0xFFDF5532),
        secondary: const Color(0xFF1CA643),
        brightness: Brightness.light),
    useMaterial3: true,
  );
}
