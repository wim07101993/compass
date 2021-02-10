import 'package:flutter/material.dart';

class Plate extends StatelessWidget {
  static const _windDirectionLettersStyle = TextStyle(
    color: Colors.white24,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white10,
        border: Border.all(color: Colors.grey, width: 5),
      ),
      child: Stack(children: [
        _windDirections(),
      ]),
    );
  }

  Widget _windDirections() {
    return Column(children: [
      const Text('N', style: _windDirectionLettersStyle),
      const Spacer(),
      Row(children: const [
        Text('W', style: _windDirectionLettersStyle),
        Spacer(),
        Text('E', style: _windDirectionLettersStyle),
      ]),
      const Spacer(),
      const Text('Z', style: _windDirectionLettersStyle),
    ]);
  }
}
