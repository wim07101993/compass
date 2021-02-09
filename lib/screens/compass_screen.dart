import 'package:compass/widget/rotating_compass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class CompassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildCompass()),
    );
  }

  Widget _buildCompass() {
    return StreamBuilder(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        double direction = snapshot.data.heading;
        return Padding(
          padding: const EdgeInsets.all(32),
          child: RotatingCompass(direction: direction),
        );
      },
    );
  }
}
