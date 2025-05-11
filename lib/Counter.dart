import 'package:flutter/material.dart';

class Counter extends StatelessWidget {

  const Counter({super.key, required this.couterValue});
  
  final int couterValue; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Counter',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        Text(
          '$couterValue',
          style: const TextStyle(fontSize: 48),
        ),
      ],
    );
  }
}
