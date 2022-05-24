import 'package:injectable/injectable.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/movie.dart';

abstract class IMoviesListViewModel {
  List<Movie>? get movies;
  set movies(List<Movie>? newValue);
  TheMovieDBFailure? get moviesFailure;
  set moviesFailure(TheMovieDBFailure? newValue);
  bool get isLoading;
  set isLoading(bool newValue);
}

@Singleton(as: IMoviesListViewModel)
class MoviesListViewModel implements IMoviesListViewModel {
  List<Movie>? _movies;
  TheMovieDBFailure? _movieDBFailure;
  bool _isLoading = true;

  @override
  List<Movie>? get movies => _movies;

  @override
  set movies(List<Movie>? newValue) {
    _movies = newValue;
  }

  @override
  TheMovieDBFailure? get moviesFailure => _movieDBFailure;

  @override
  set moviesFailure(TheMovieDBFailure? newValue) {
    _movieDBFailure = newValue;
  }

  @override
  bool get isLoading => _isLoading;

  @override
  set isLoading(bool newValue) {
    _isLoading = newValue;
  }
}
