import 'package:flutter/material.dart';
import 'package:state_managment_sample/inherited_counter.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = InheritedCounter.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Counter',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        Text(
          '${counter.counterValue}',
          style: TextStyle(fontSize: 48),
        ),
        
      ],
    );
  }
}
