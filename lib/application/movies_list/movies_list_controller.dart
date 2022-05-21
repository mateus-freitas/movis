import 'package:dartz/dartz.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/i_movies_list_repository.dart';
import 'package:movis/domain/movies_list/movie.dart';

abstract class IMoviesListController {
  Future<Either<TheMovieDBFailure, List<Movie>>> loadMovies(
      IMoviesListViewModel vm);
}

class MoviesListController implements IMoviesListController {
  final IMoviesListRepository _repository;

  const MoviesListController(this._repository);

  @override
  Future<Either<TheMovieDBFailure, List<Movie>>> loadMovies(
      IMoviesListViewModel vm) async {
    final moviesResult = await _repository.getPopularMovies();
    return moviesResult.fold((l) => moviesResult, (movies) {
      vm.movies = movies;
      return moviesResult;
    });
  }
}
