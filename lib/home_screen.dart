import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment_sample/bloc_counter/counter_bloc.dart';
import 'package:state_managment_sample/bloc_counter/counter_event.dart';
import 'package:state_managment_sample/bloc_counter/counter_state.dart';
import 'package:state_managment_sample/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          return Counter(couterValue: state.count);
        }),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
            context.read<CounterBloc>().add(IncrementEvent());
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
