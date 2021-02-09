import 'dart:math';

import 'package:flutter/material.dart';

class RotatingCompass extends StatelessWidget {
  const RotatingCompass({
    Key key,
    this.direction,
  }) : super(key: key);

  final double direction;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      clipBehavior: Clip.antiAlias,
      elevation: 8.0,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Transform.rotate(
          angle: ((direction ?? 0) * (pi / 180) * -1),
          child: Image.asset(
            'assets/compass.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
