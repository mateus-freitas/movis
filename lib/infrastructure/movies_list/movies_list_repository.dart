import 'package:injectable/injectable.dart';
import 'package:movis/core/error/exceptions.dart';
import 'package:movis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movis/domain/movies_list/i_movies_list_repository.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/infrastructure/movies_list/movie_dto.dart';
import 'package:movis/infrastructure/movies_list/movies_list_remote_data_source.dart';

@Injectable(as: IMoviesListRepository)
class MoviesListRepositoryImpl implements IMoviesListRepository {
  final IMoviesListRemoteDataSource _remoteDataSource;

  MoviesListRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<TheMovieDBFailure, List<Movie>>> getPopularMovies() async {
    try {
      final moviesDtos = await _remoteDataSource.getPopularMovies();
      final movies = moviesDtos.map((e) => e.toDomain()).toList();
      movies.forEach(((element) => print(element)));
      return Right(movies);
    } on TheMovieDBException catch (e) {
      print(e.message);
      return Left(TheMovieDBFailure.generalError(
          statusCode: e.statusCode, message: e.message));
    } catch (e) {
      print(e);
      return const Left(TheMovieDBFailure.generalError(
          statusCode: -1, message: 'Unknown error'));
    }
  }
}
