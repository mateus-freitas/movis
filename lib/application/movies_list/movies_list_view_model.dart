import 'package:movis/domain/movies_list/movie.dart';

abstract class IMoviesListViewModel {
  List<Movie>? get movies;
  set movies(List<Movie>? newValue);
}

class MoviesListViewModel implements IMoviesListViewModel {
  List<Movie>? _movies;

  @override
  List<Movie>? get movies => _movies;

  @override
  set movies(List<Movie>? newValue) {
    _movies = newValue;
  }
}
