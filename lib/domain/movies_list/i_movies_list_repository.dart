import 'package:dartz/dartz.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movies_list/movie.dart';

abstract class IMoviesListRepository {
  Future<Either<TheMovieDBFailure, List<Movie>>> getPopularMovies();
}
