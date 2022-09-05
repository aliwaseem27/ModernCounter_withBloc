import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_counter/logic/cubit/counter_cubit.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterValue> createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward(from: 0.0);
    return ZoomIn(
      manualTrigger: true,
      controller: (controller) {
        controller = _animationController;
        return controller;},
      child: Text(
        context
            .select((CounterCubit cubit) => cubit.state.counterValue)
            .toString(),
        style: Theme.of(context)
            .textTheme
            .headline1
            ?.copyWith(fontWeight: FontWeight.bold, fontSize: 80),
      ),
    );
  }
}
