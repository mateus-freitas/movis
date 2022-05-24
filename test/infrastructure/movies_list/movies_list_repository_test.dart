import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movis/infrastructure/movies_list/movies_list_remote_data_source.dart';
import 'package:movis/infrastructure/movies_list/movies_list_repository.dart';

class MockMoviesListRemoteDataSource extends Mock
    implements MoviesListRemoteDataSourceImpl {}

void main() {
  late MoviesListRepositoryImpl repository;
  late MockMoviesListRemoteDataSource remoteDataSource;

  setUp(() {
    remoteDataSource = MockMoviesListRemoteDataSource();
    repository = MoviesListRepositoryImpl(remoteDataSource);
  });

  test('should fetch data from the data source', () {});

  test('should return remote data when the call is successful', () {});

  test('should return a Failure when the call is not successful', () {});
}
