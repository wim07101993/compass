import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:compass/features/compass/domain/repositories/compass_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'compass_bloc.freezed.dart';

@freezed
abstract class CompassEvent with _$CompassEvent {
  const factory CompassEvent.refreshDirection() = RefreshDirection;
  const factory CompassEvent.directionChanged({
    @required double direction,
  }) = _DirectionChanged;
}

@freezed
abstract class CompassState with _$CompassState {
  const factory CompassState.initial() = Iinitial;
  const factory CompassState.directionChanged({
    @required double direction,
  }) = DirectionChanged;
}

class CompassBloc extends Bloc<CompassEvent, CompassState> {
  CompassBloc({
    @required this.compassRepo,
  }) : super(const CompassState.initial()) {
    compassRepo.directionChanges.forEach((change) {
      add(CompassEvent.directionChanged(direction: change));
    });
  }

  final CompassRepository compassRepo;

  @override
  Stream<CompassState> mapEventToState(CompassEvent event) {
    return event.when(
      refreshDirection: () async* {},
      directionChanged: _directionChanged,
    );
  }

  Stream<CompassState> _directionChanged(double direction) async* {
    yield CompassState.directionChanged(direction: direction);
  }
}
