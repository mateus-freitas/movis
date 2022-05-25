import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movis/infrastructure/movies_list/movies_list_remote_data_source.dart';
import 'package:movis/infrastructure/movies_list/movies_list_repository.dart';
import 'movies_list_repository_test.mocks.dart';

@GenerateMocks([MoviesListRemoteDataSourceImpl])
void main() {
  late MoviesListRepositoryImpl repository;
  late MockMoviesListRemoteDataSourceImpl remoteDataSource;

  setUp(() {
    remoteDataSource = MockMoviesListRemoteDataSourceImpl();
    repository = MoviesListRepositoryImpl(remoteDataSource);
  });

  test('should fetch data from the data source', () {});

  test('should return remote data when the call is successful', () {});

  test('should return a Failure when the call is not successful', () {});
}
