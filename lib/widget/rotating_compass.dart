import 'dart:math';

import 'package:flutter/material.dart';

class RotatingCompass extends StatefulWidget {
  const RotatingCompass({
    Key key,
    this.direction,
  }) : super(key: key);

  final double direction;

  @override
  _RotatingCompassState createState() => _RotatingCompassState();
}

class _RotatingCompassState extends State<RotatingCompass> {
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
        child: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 100),
          tween: Tween(end: (widget.direction ?? 0) * (pi / 180) * -1),
          builder: (context, double value, widget) => Transform.rotate(
            angle: value,
            child: Image.asset(
              'assets/compass.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
