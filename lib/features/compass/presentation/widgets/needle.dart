import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Needle extends StatelessWidget {
  const Needle({
    Key key,
    @required this.direction,
  }) : super(key: key);

  final double direction;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 100),
      tween: Tween(end: (direction ?? 0) * (math.pi / 180) * -1),
      builder: (context, double value, widget) => Transform.rotate(
        angle: value,
        child: const ClipPath(
          clipper: NeedleClipper(width: 1 / 5),
          child: ColoredBox(color: Colors.red),
        ),
      ),
    );
  }
}

class NeedleClipper extends CustomClipper<Path> {
  const NeedleClipper({
    @required this.width,
    this.notch = 1 / 3,
  });

  /// The depth of the notch relative to the diameter of the circle in which
  /// it is positioned.
  final double notch;

  /// The width of the needle relative to the diameter of the circle in which
  /// it is positioned.
  final double width;

  @override
  Path getClip(Size size) {
    // The needle will rotate in a circle with radius r
    // - 1st point = top center
    //   => (r; 0)
    // - 2nd point = bottom, slightly to the right. If we would use r as y
    //   vector, there would be a slight overshoot.
    //   => (r + d * width; d - a)  (a is the overshoot of in y direction)
    // - 3th point = a little back up in the center
    //   => (0; d - d * notch)
    // - 4th point = mirror 2nd point
    //   => (r - d * width; d-a)
    // - 5th point = 1st point
    //   => (r; 0)

    final d = size.shortestSide;
    final r = d / 2;
    final a = _calculateHeightDifference(r);

    final path = Path()
      ..moveTo(r, 0)
      ..lineTo(r + (d * width), d - a)
      ..lineTo(r, d - d * notch)
      ..lineTo(r - (d * width), d - a)
      ..lineTo(r, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(NeedleClipper oldClipper) => true;

  double _calculateHeightDifference(double radius) {
    // we can create a triangle with the following points:
    // - p1 = center of the circle
    // - p2 = where the needle touches border of the server
    // - p3 = straight bellow the center, slightly above the border so that we
    //        create a right angled triangle
    //
    // These points create right angled triangle so pythagoras applies
    // From now on, we will call [p2-p3] 'a' and [p1-p3] 'b'. [p1-p2] is the
    // radius so won't need another name.
    //
    // r^2 = a^2 + b^2
    //   b = (r^2 - a^2)^0.5
    //                  a = 2r * width
    //                  b = r - c
    //   c = r - b

    final a = 2 * radius * width;
    final b = math.sqrt(radius * radius - a * a);
    return radius - b;
  }
}
