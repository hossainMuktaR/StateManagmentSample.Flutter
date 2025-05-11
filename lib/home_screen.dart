import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_sample/counter.dart';
import 'package:state_managment_sample/counter_notifier.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<CounterNotifier>(
          builder: (context, counterNotifier, child) {
            return Counter(couterValue: counterNotifier.count);
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
            context.read<CounterNotifier>().increment();
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
