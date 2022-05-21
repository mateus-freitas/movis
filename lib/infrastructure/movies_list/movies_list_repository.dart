import 'package:movis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movis/domain/movies_list/i_movies_list_repository.dart';
import 'package:movis/domain/movies_list/movie.dart';

class MoviesListRepositoryImpl implements IMoviesListRepository {
  @override
  Future<Either<TheMovieDBFailure, List<Movie>>> getPopularMovies() async {
    return Right([]);
  }
}
