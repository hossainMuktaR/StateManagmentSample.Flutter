import 'package:flutter/material.dart';
import 'package:state_managment_sample/counter.dart';
import 'package:state_managment_sample/inherited_counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      counterValue: count,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Counter(),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Increment'),
        ),
      ],
    )
    );
  }
}
