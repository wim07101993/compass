import 'package:compass/features/compass/presentation/bloc/compass_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_compass/flutter_compass.dart';

import '../../../../main.dart';
import '../widgets/compass.dart';

class CompassScreen extends StatefulWidget {
  @override
  _CompassScreenState createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  double direction = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222233),
      // body: Center(child: _buildCompass()),
      body: Center(child: _buildBlocCompass()),
    );
  }

  Widget _buildBlocCompass() {
    return BlocProvider(
      create: (_) => CompassBloc(compassRepo: getIt()),
      child: BlocListener<CompassBloc, CompassState>(
        listener: onStateChange,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Compass(direction: direction),
        ),
      ),
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
          return const Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(32),
          child: Compass(direction: snapshot.data.heading as double),
        );
      },
    );
  }

  void onStateChange(BuildContext context, CompassState state) {
    state.maybeWhen(
      directionChanged: (double value) => setState(() => direction = value),
      orElse: () {},
    );
  }
}
