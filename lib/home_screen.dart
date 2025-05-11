
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:state_managment_sample/counter.dart';
import 'package:state_managment_sample/counter_controller.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<CounterController>(
          builder: (_) => 
            Counter(couterValue: counterController.count.value)
          ),
        ElevatedButton(
          onPressed: () {
            // Increment the counter value
            counterController.increment();
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}