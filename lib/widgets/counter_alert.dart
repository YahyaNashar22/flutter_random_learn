import 'package:flutter/material.dart';

class CounterAlert extends StatelessWidget {
  const CounterAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Woah!',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      content: const Text(
        "Can't go lower than 0!",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Ok"),
        )
      ],
    );
  }
}
