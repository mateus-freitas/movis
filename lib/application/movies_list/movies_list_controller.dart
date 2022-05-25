import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/i_movies_list_repository.dart';

abstract class IMoviesListController {
  Future<void> loadMovies(IMoviesListViewModel vm);
}

@Singleton(as: IMoviesListController)
class MoviesListController implements IMoviesListController {
  final IMoviesListRepository _repository;

  const MoviesListController(this._repository);

  @override
  Future<void> loadMovies(IMoviesListViewModel vm) async {
    final moviesResult = await _repository.getPopularMovies();
    moviesResult.fold((failure) {
      vm.moviesFailure = failure;
    }, (movies) {
      vm.movies = movies;
    });
  }
}
