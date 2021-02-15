// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'compass_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CompassEventTearOff {
  const _$CompassEventTearOff();

// ignore: unused_element
  RefreshDirection refreshDirection() {
    return const RefreshDirection();
  }

// ignore: unused_element
  _DirectionChanged directionChanged({@required double direction}) {
    return _DirectionChanged(
      direction: direction,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CompassEvent = _$CompassEventTearOff();

/// @nodoc
mixin _$CompassEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult refreshDirection(),
    @required TResult directionChanged(double direction),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult refreshDirection(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult refreshDirection(RefreshDirection value),
    @required TResult directionChanged(_DirectionChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult refreshDirection(RefreshDirection value),
    TResult directionChanged(_DirectionChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CompassEventCopyWith<$Res> {
  factory $CompassEventCopyWith(
          CompassEvent value, $Res Function(CompassEvent) then) =
      _$CompassEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompassEventCopyWithImpl<$Res> implements $CompassEventCopyWith<$Res> {
  _$CompassEventCopyWithImpl(this._value, this._then);

  final CompassEvent _value;
  // ignore: unused_field
  final $Res Function(CompassEvent) _then;
}

/// @nodoc
abstract class $RefreshDirectionCopyWith<$Res> {
  factory $RefreshDirectionCopyWith(
          RefreshDirection value, $Res Function(RefreshDirection) then) =
      _$RefreshDirectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshDirectionCopyWithImpl<$Res>
    extends _$CompassEventCopyWithImpl<$Res>
    implements $RefreshDirectionCopyWith<$Res> {
  _$RefreshDirectionCopyWithImpl(
      RefreshDirection _value, $Res Function(RefreshDirection) _then)
      : super(_value, (v) => _then(v as RefreshDirection));

  @override
  RefreshDirection get _value => super._value as RefreshDirection;
}

/// @nodoc
class _$RefreshDirection
    with DiagnosticableTreeMixin
    implements RefreshDirection {
  const _$RefreshDirection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassEvent.refreshDirection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassEvent.refreshDirection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RefreshDirection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult refreshDirection(),
    @required TResult directionChanged(double direction),
  }) {
    assert(refreshDirection != null);
    assert(directionChanged != null);
    return refreshDirection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult refreshDirection(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshDirection != null) {
      return refreshDirection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult refreshDirection(RefreshDirection value),
    @required TResult directionChanged(_DirectionChanged value),
  }) {
    assert(refreshDirection != null);
    assert(directionChanged != null);
    return refreshDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult refreshDirection(RefreshDirection value),
    TResult directionChanged(_DirectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshDirection != null) {
      return refreshDirection(this);
    }
    return orElse();
  }
}

abstract class RefreshDirection implements CompassEvent {
  const factory RefreshDirection() = _$RefreshDirection;
}

/// @nodoc
abstract class _$DirectionChangedCopyWith<$Res> {
  factory _$DirectionChangedCopyWith(
          _DirectionChanged value, $Res Function(_DirectionChanged) then) =
      __$DirectionChangedCopyWithImpl<$Res>;
  $Res call({double direction});
}

/// @nodoc
class __$DirectionChangedCopyWithImpl<$Res>
    extends _$CompassEventCopyWithImpl<$Res>
    implements _$DirectionChangedCopyWith<$Res> {
  __$DirectionChangedCopyWithImpl(
      _DirectionChanged _value, $Res Function(_DirectionChanged) _then)
      : super(_value, (v) => _then(v as _DirectionChanged));

  @override
  _DirectionChanged get _value => super._value as _DirectionChanged;

  @override
  $Res call({
    Object direction = freezed,
  }) {
    return _then(_DirectionChanged(
      direction: direction == freezed ? _value.direction : direction as double,
    ));
  }
}

/// @nodoc
class _$_DirectionChanged
    with DiagnosticableTreeMixin
    implements _DirectionChanged {
  const _$_DirectionChanged({@required this.direction})
      : assert(direction != null);

  @override
  final double direction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassEvent.directionChanged(direction: $direction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassEvent.directionChanged'))
      ..add(DiagnosticsProperty('direction', direction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DirectionChanged &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(direction);

  @JsonKey(ignore: true)
  @override
  _$DirectionChangedCopyWith<_DirectionChanged> get copyWith =>
      __$DirectionChangedCopyWithImpl<_DirectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult refreshDirection(),
    @required TResult directionChanged(double direction),
  }) {
    assert(refreshDirection != null);
    assert(directionChanged != null);
    return directionChanged(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult refreshDirection(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (directionChanged != null) {
      return directionChanged(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult refreshDirection(RefreshDirection value),
    @required TResult directionChanged(_DirectionChanged value),
  }) {
    assert(refreshDirection != null);
    assert(directionChanged != null);
    return directionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult refreshDirection(RefreshDirection value),
    TResult directionChanged(_DirectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (directionChanged != null) {
      return directionChanged(this);
    }
    return orElse();
  }
}

abstract class _DirectionChanged implements CompassEvent {
  const factory _DirectionChanged({@required double direction}) =
      _$_DirectionChanged;

  double get direction;
  @JsonKey(ignore: true)
  _$DirectionChangedCopyWith<_DirectionChanged> get copyWith;
}

/// @nodoc
class _$CompassStateTearOff {
  const _$CompassStateTearOff();

// ignore: unused_element
  Iinitial initial() {
    return const Iinitial();
  }

// ignore: unused_element
  DirectionChanged directionChanged({@required double direction}) {
    return DirectionChanged(
      direction: direction,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CompassState = _$CompassStateTearOff();

/// @nodoc
mixin _$CompassState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult directionChanged(double direction),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Iinitial value),
    @required TResult directionChanged(DirectionChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Iinitial value),
    TResult directionChanged(DirectionChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CompassStateCopyWith<$Res> {
  factory $CompassStateCopyWith(
          CompassState value, $Res Function(CompassState) then) =
      _$CompassStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompassStateCopyWithImpl<$Res> implements $CompassStateCopyWith<$Res> {
  _$CompassStateCopyWithImpl(this._value, this._then);

  final CompassState _value;
  // ignore: unused_field
  final $Res Function(CompassState) _then;
}

/// @nodoc
abstract class $IinitialCopyWith<$Res> {
  factory $IinitialCopyWith(Iinitial value, $Res Function(Iinitial) then) =
      _$IinitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$IinitialCopyWithImpl<$Res> extends _$CompassStateCopyWithImpl<$Res>
    implements $IinitialCopyWith<$Res> {
  _$IinitialCopyWithImpl(Iinitial _value, $Res Function(Iinitial) _then)
      : super(_value, (v) => _then(v as Iinitial));

  @override
  Iinitial get _value => super._value as Iinitial;
}

/// @nodoc
class _$Iinitial with DiagnosticableTreeMixin implements Iinitial {
  const _$Iinitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CompassState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Iinitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult directionChanged(double direction),
  }) {
    assert(initial != null);
    assert(directionChanged != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Iinitial value),
    @required TResult directionChanged(DirectionChanged value),
  }) {
    assert(initial != null);
    assert(directionChanged != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Iinitial value),
    TResult directionChanged(DirectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Iinitial implements CompassState {
  const factory Iinitial() = _$Iinitial;
}

/// @nodoc
abstract class $DirectionChangedCopyWith<$Res> {
  factory $DirectionChangedCopyWith(
          DirectionChanged value, $Res Function(DirectionChanged) then) =
      _$DirectionChangedCopyWithImpl<$Res>;
  $Res call({double direction});
}

/// @nodoc
class _$DirectionChangedCopyWithImpl<$Res>
    extends _$CompassStateCopyWithImpl<$Res>
    implements $DirectionChangedCopyWith<$Res> {
  _$DirectionChangedCopyWithImpl(
      DirectionChanged _value, $Res Function(DirectionChanged) _then)
      : super(_value, (v) => _then(v as DirectionChanged));

  @override
  DirectionChanged get _value => super._value as DirectionChanged;

  @override
  $Res call({
    Object direction = freezed,
  }) {
    return _then(DirectionChanged(
      direction: direction == freezed ? _value.direction : direction as double,
    ));
  }
}

/// @nodoc
class _$DirectionChanged
    with DiagnosticableTreeMixin
    implements DirectionChanged {
  const _$DirectionChanged({@required this.direction})
      : assert(direction != null);

  @override
  final double direction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompassState.directionChanged(direction: $direction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompassState.directionChanged'))
      ..add(DiagnosticsProperty('direction', direction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DirectionChanged &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(direction);

  @JsonKey(ignore: true)
  @override
  $DirectionChangedCopyWith<DirectionChanged> get copyWith =>
      _$DirectionChangedCopyWithImpl<DirectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult directionChanged(double direction),
  }) {
    assert(initial != null);
    assert(directionChanged != null);
    return directionChanged(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult directionChanged(double direction),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (directionChanged != null) {
      return directionChanged(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Iinitial value),
    @required TResult directionChanged(DirectionChanged value),
  }) {
    assert(initial != null);
    assert(directionChanged != null);
    return directionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Iinitial value),
    TResult directionChanged(DirectionChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (directionChanged != null) {
      return directionChanged(this);
    }
    return orElse();
  }
}

abstract class DirectionChanged implements CompassState {
  const factory DirectionChanged({@required double direction}) =
      _$DirectionChanged;

  double get direction;
  @JsonKey(ignore: true)
  $DirectionChangedCopyWith<DirectionChanged> get copyWith;
}
