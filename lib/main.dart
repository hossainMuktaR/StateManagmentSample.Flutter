import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment_sample/bloc_counter/counter_bloc.dart';
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
          child: BlocProvider(
            create: (context) => CounterBloc(),
            child: const HomeScreen(),
            ),
        ),
      ),
    );
  }
}
