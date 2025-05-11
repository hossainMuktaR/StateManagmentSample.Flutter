import 'package:flutter/material.dart';
import 'package:state_managment_sample/counter.dart';
import 'package:state_managment_sample/counter_notifier.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final counterListenable = CounterNotifier();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListenableBuilder(
            listenable: counterListenable,
            builder: (context, child) {
              return Counter(couterValue: counterListenable.count);
            }),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
            counterListenable.increment();
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
