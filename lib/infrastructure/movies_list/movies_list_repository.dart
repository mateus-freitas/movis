import 'package:movis/core/error/exceptions.dart';
import 'package:movis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movis/domain/movies_list/i_movies_list_repository.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/infrastructure/movies_list/movie_dto.dart';
import 'package:movis/infrastructure/movies_list/movies_list_remote_data_source.dart';

class MoviesListRepositoryImpl implements IMoviesListRepository {
  final IMoviesListRemoteDataSource _remoteDataSource;

  MoviesListRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<TheMovieDBFailure, List<Movie>>> getPopularMovies() async {
    try {
      final moviesDtos = await _remoteDataSource.getPopularMovies();
      return Right(moviesDtos.map((e) => e.toDomain()).toList());
    } on TheMovieDBException catch (e) {
      return Left(TheMovieDBFailure.generalError(
          statusCode: e.statusCode, message: ''));
    }
  }
}
