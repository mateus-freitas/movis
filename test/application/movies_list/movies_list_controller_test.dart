import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/infrastructure/movies_list/movies_list_repository.dart';

class MockMoviesListViewModel extends Mock implements MoviesListViewModel {}

class MockMoviesListRepository extends Mock
    implements MoviesListRepositoryImpl {}

void main() {
  late MockMoviesListViewModel mockViewModel;
  late MockMoviesListRepository mockRepository;
  late MoviesListController controller;

  setUp(() {
    mockViewModel = MockMoviesListViewModel();
    mockRepository = MockMoviesListRepository();
    controller = MoviesListController(mockRepository);
  });

  final moviesList = [
    Movie(
        name: 'movie name',
        poster: Uri.parse(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg'),
        releaseDate: DateTime(2022, 2, 17),
        userScore: 0.72)
  ];

  test('should get data from movies list repository', () {});

  test('should update the view model when data is fetched successfully',
      () async {
    // arrange
    when(mockRepository.getPopularMovies()).thenAnswer(
        (_) async => Right<TheMovieDBFailure, List<Movie>>(moviesList));

    // act
    final moviesResult = await controller.loadMovies(mockViewModel);

    // assert
    verify(mockViewModel.movies = moviesList);
  });

  test('should return failure when there is an error', () {});
}
