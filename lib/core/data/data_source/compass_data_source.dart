import 'package:flutter_compass/flutter_compass.dart';

abstract class CompassDataSource {
  Stream<CompassEvent> get directionChanges;
}

class CompassDataSourceImpl implements CompassDataSource {
  @override
  Stream<CompassEvent> get directionChanges => FlutterCompass.events;
}
