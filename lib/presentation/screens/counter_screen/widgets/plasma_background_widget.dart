import 'package:flutter/material.dart';
import 'package:modern_counter/core/themes/app_theme.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 10,
        color: Theme.of(context).particlesColor,
        blur: 0.3,
        size: 0.4,
        speed: 0.7,
        offset: 0,
        blendMode: BlendMode.plus,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}
