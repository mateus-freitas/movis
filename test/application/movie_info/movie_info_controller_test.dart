import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:movis/application/movie_info/movie_info_controller.dart';
import 'package:movis/infrastructure/movie_info/movie_info_repository_impl.dart';
import 'movie_info_controller_test.mocks.dart';

@GenerateMocks([MovieInfoRepositoryImpl])
void main() {
  late MovieInfoController controller;
  late MockMovieInfoRepositoryImpl repository;

  setUp(() {
    repository = MockMovieInfoRepositoryImpl();
    controller = MovieInfoController(repository);
  });

  test('should get data from MovieInfoRepository', () {});

  test('should update the view model when data is fetched successfully', () {});

  test('should set the failure on view model when there is an error', () {});
}
