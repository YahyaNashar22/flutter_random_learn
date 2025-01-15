import 'package:flutter/material.dart';

ThemeData themeStyles() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: const Color(0x0c0c0cff),
    appBarTheme: _appBarTheme(),
    textTheme: _textTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
    useMaterial3: true,
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      ),
      shape: const WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.hovered)) {
          return Colors.orange;
        }
        return Colors.deepPurple;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.hovered)) {
          return Colors.white;
        }
        return Colors.white;
      }),
      textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 18)),
    ),
  );
}

TextTheme _textTheme() {
  return const TextTheme(
    titleLarge: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  );
}

AppBarTheme _appBarTheme() {
  return const AppBarTheme(
    centerTitle: true,
    elevation: 10,
    shadowColor: Colors.purple,
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  );
}
