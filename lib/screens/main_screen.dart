import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Main Screen"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Where Do You Want To Go?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Page 1"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Page 2"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Page 3"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Page 4"),
              ),
            ],
          ),
        ));
  }
}
