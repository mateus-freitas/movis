import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/infrastructure/movies_list/movies_list_repository.dart';
import 'movies_list_controller_test.mocks.dart';

@GenerateMocks([MoviesListViewModel, MoviesListRepositoryImpl])
void main() {
  late MockMoviesListViewModel mockViewModel;
  late MockMoviesListRepositoryImpl mockRepository;
  late MoviesListController controller;

  setUp(() {
    mockViewModel = MockMoviesListViewModel();
    mockRepository = MockMoviesListRepositoryImpl();
    controller = MoviesListController(mockRepository);
  });

  final moviesList = [
    Movie(
        id: 23344,
        title: 'movie name',
        poster: Uri.parse(
            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg'),
        releaseDate: DateTime(2022, 2, 17),
        userScore: 8.3)
  ];

  test('should get data from movies list repository', () {});

  test('should update the view model when data is fetched successfully',
      () async {
    // arrange
    when(mockRepository.getPopularMovies()).thenAnswer(
        (_) async => Right<TheMovieDBFailure, List<Movie>>(moviesList));

    // act
    await controller.loadMovies(mockViewModel);

    // assert
    verify(mockViewModel.movies = moviesList);
  });

  test('should set the failure on view model when there is an error', () {});
}
