import 'package:compass/features/compass/domain/repositories/compass_repository.dart';
import 'package:compass/features/compass/presentation/bloc/compass_bloc.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCompassRepo extends Mock implements CompassRepository {}

void main() {
  List<DirectionChanged> fakeDirectionChanges;
  MockCompassRepo mockCompassRepo;
  CompassBloc compassBloc;

  setUp(() {
    fakeDirectionChanges = faker.randomGenerator
        .amount(
          (i) => faker.randomGenerator.decimal(),
          faker.randomGenerator.integer(10, min: 2),
        )
        .map((e) => CompassState.directionChanged(direction: e as double))
        .cast<DirectionChanged>()
        .toList();

    mockCompassRepo = MockCompassRepo();

    when(mockCompassRepo.directionChanges).thenAnswer((_) async* {
      for (final change in fakeDirectionChanges) {
        yield change.direction;
      }
    });

    compassBloc = CompassBloc(compassRepo: mockCompassRepo);
  });

  test('should emit event when repos.directionChanges emits new direction', () {
    // assert later
    expectLater(compassBloc, emitsInOrder(fakeDirectionChanges));
  });
}
