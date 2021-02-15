import 'package:compass/core/data/data_source/compass_data_source.dart';
import 'package:compass/features/compass/data/repositories/compass_repository_impl.dart';
import 'package:faker/faker.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCompassDataSource extends Mock implements CompassDataSource {}

void main() {
  CompassRepositoryImpl repo;
  MockCompassDataSource mockCompassDataSource;

  setUp(() {
    mockCompassDataSource = MockCompassDataSource();
    repo = CompassRepositoryImpl(compassDataSource: mockCompassDataSource);
  });

  group('directionChanges', () {
    test('should get the stream from the data source', () {
      // arrange
      when(mockCompassDataSource.directionChanges).thenAnswer((_) async* {});

      // act
      repo.directionChanges;

      // assert
      verify(mockCompassDataSource.directionChanges);
    });

    test('should convert the event stream to a double stream', () {
      // arrange
      final directionResults = faker.randomGenerator
          .amount(
            (i) => faker.randomGenerator.decimal(),
            faker.randomGenerator.integer(10, min: 2),
          )
          .cast<double>()
          .toList();

      when(mockCompassDataSource.directionChanges).thenAnswer((_) async* {
        for (final result in directionResults) {
          yield CompassEvent.fromList([result, 0.0, 0.0]);
        }
      });

      // assert later
      expectLater(repo.directionChanges, emitsInOrder(directionResults));
    });
  });
}
