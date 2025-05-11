import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_sample/counter_notifier.dart';
import 'package:state_managment_sample/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeNotifierProvider<CounterNotifier>(
            create: (context) => CounterNotifier(),
            child: const HomeScreen(),
          )
        ),
      ),
    );
  }
}
