
import 'package:flutter/material.dart';
import 'package:state_managment_sample/counter.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Counter( couterValue: count,),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}