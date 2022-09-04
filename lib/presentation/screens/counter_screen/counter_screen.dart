import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:modern_counter/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:modern_counter/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:modern_counter/presentation/screens/counter_screen/widgets/plasma_background_widget.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PlasmaBackground(),
          Positioned(top: 48.0, child: AnimatedCircles()),
          Positioned(bottom: 48.0, child: CounterSlider()),
        ],
      ),
    );
  }
}
