import 'package:compass/core/data/data_source/compass_data_source.dart';
import 'package:compass/features/compass/data/repositories/compass_repository_impl.dart';
import 'package:compass/features/compass/domain/repositories/compass_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'features/compass/presentation/bloc/compass_bloc.dart';
import 'features/compass/presentation/screens/compass_screen.dart';

final getIt = GetIt.instance;

void main() {
  getIt
    ..registerLazySingleton<CompassDataSource>(() => CompassDataSourceImpl())
    ..registerLazySingleton<CompassRepository>(
        () => CompassRepositoryImpl(compassDataSource: getIt()))
    ..registerFactory(() => CompassBloc(compassRepo: getIt()));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compass',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CompassScreen(),
    );
  }
}
