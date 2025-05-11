import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_managment_sample/counter.dart';
import 'package:state_managment_sample/counter_model.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  final int count = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Counter(couterValue: ref.watch(CounterModelProvider).counter),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
            ref.read(CounterModelProvider).increment();
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
