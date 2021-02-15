import 'dart:math';

import 'package:flutter/material.dart';

import 'needle.dart';
import 'plate.dart';

class Compass extends StatelessWidget {
  const Compass({
    Key key,
    this.direction,
  }) : super(key: key);

  final double direction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = min(constraints.maxHeight, constraints.maxWidth);
        return SizedBox(
          height: size,
          width: size,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Plate(),
              Padding(
                padding: EdgeInsets.all(size / 10),
                child: Needle(direction: direction),
              ),
            ],
          ),
        );
      },
    );
  }
}
