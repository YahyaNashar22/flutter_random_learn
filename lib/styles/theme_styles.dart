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
      fixedSize: const WidgetStatePropertyAll(Size(200, 50)),
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
      elevation: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.hovered)) {
          return 10.00;
        }
        return 0;
      }),
      shadowColor: const WidgetStatePropertyAll(Colors.yellow),
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
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.deepPurple,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
  );
}
