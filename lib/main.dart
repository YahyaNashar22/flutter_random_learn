import 'package:flutter/material.dart';
import 'package:random_learn/screens/main_screen.dart';
import 'package:random_learn/styles/theme_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Flutter',
      theme: themeStyles(),
      home: const MainScreen(),
    );
  }
}
