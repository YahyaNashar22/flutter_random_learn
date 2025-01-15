import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_learn/providers/counter_provider.dart';
import 'package:random_learn/screens/main_screen.dart';
import 'package:random_learn/styles/theme_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Flutter',
        theme: themeStyles(),
        home: const MainScreen(),
      ),
    );
  }
}
