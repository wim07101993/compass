import 'package:compass/core/data/data_source/compass_data_source.dart';
import 'package:flutter/foundation.dart';

import '../../domain/repositories/compass_repository.dart';

class CompassRepositoryImpl implements CompassRepository {
  const CompassRepositoryImpl({
    @required this.compassDataSource,
  });

  final CompassDataSource compassDataSource;

  @override
  Stream<double> get directionChanges {
    return compassDataSource.directionChanges.map((event) => event.heading);
  }
}
