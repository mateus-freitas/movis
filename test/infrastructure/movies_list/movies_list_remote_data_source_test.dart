import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movis/infrastructure/movies_list/movies_list_remote_data_source.dart';
import 'package:movis/networking/tmdb_dio_client.dart';

class MockDioClient extends Mock implements TMDBClient {}

void main() {
  late MockDioClient mockClient;
  late MoviesListRemoteDataSourceImpl dataSource;

  setUp(() {
    mockClient = MockDioClient();
    dataSource = MoviesListRemoteDataSourceImpl(mockClient);
  });

  group('getPopularMovies()', () {
    test('should throw a [TheMovieDBException] when call to API fails', () {});

    test('should return a list of MovieDto when call to API is successful',
        () {});
  });
}
