import 'package:flutter/material.dart';

/// A simple [InheritedWidget] that holds a counter value.
/// This widget can be used to provide a counter value to its descendants
/// and notify them when the value changes.
class InheritedCounter extends InheritedWidget {
  final int counterValue;

  const InheritedCounter({
    super.key,
    required this.counterValue,
    required super.child,
  });

  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result =
        context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
    assert(result != null, "No InheritedCounter found in context");
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return counterValue != (oldWidget as InheritedCounter).counterValue;
  }
}
