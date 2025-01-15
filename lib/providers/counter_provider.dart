import 'package:flutter/material.dart';
import 'package:random_learn/widgets/counter_alert.dart';

class CounterProvider extends ChangeNotifier {
  int count;

  CounterProvider({
    this.count = 0,
  });

  void incrementCount() async {
    count++;
    notifyListeners();
  }

  void decrementCount(BuildContext context) async {
    count--;
    if (count < 0) {
      count = 0;
      _showAlert(context);
    }
    notifyListeners();
  }

  void resetCount() async {
    count = 0;
    notifyListeners();
  }
}

void _showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const CounterAlert();
    },
  );
}
