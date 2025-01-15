import 'package:flutter/material.dart';
import 'package:random_learn/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.watch<CounterProvider>().resetCount,
        backgroundColor: Colors.deepOrange,
        child: const Text(
          "Reset",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Count: ${context.watch<CounterProvider>().count}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            _buttons(context),
          ],
        ),
      ),
    );
  }

  Row _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () =>
                context.read<CounterProvider>().decrementCount(context),
            child: const Text("Decrement")),
        const SizedBox(width: 10),
        ElevatedButton(
            onPressed: context.read<CounterProvider>().incrementCount,
            child: const Text("Increment")),
      ],
    );
  }
}
