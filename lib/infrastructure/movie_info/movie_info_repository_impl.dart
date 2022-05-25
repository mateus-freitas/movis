import 'package:injectable/injectable.dart';
import 'package:movis/core/error/exceptions.dart';
import 'package:movis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:movis/domain/movie_info/i_movie_info_repository.dart';
import 'package:movis/domain/movie_info/movie_info.dart';
import 'package:movis/infrastructure/movie_info/movie_info_dto.dart';
import 'package:movis/infrastructure/movie_info/movie_info_remote_data_source.dart';

@Injectable(as: IMovieInfoRepository)
class MovieInfoRepositoryImpl implements IMovieInfoRepository {
  final IMovieInfoRemoteDataSource _dataSource;

  MovieInfoRepositoryImpl(this._dataSource);

  @override
  Future<Either<TheMovieDBFailure, MovieInfo>> getMovieInfo(
      int id, String? lang) async {
    try {
      final detailsDto = await _dataSource.getMovieInfo(id, lang);
      return Right(detailsDto.toDomain());
    } on TheMovieDBException catch (e) {
      return Left(TheMovieDBFailure.generalError(
          statusCode: e.statusCode, message: e.message));
    } catch (e) {
      return const Left(TheMovieDBFailure.generalError(
          statusCode: -1, message: 'Unknown error'));
    }
  }

  @override
  Future<Either<TheMovieDBFailure, Either<Unit, Uri>>> getMovieTrailer(
      int id, String? lang) async {
    try {
      final trailerUri = await _dataSource.getMovieOfficialTrailer(id, lang);
      if (trailerUri != null) {
        return Right(Right(trailerUri));
      }
      return const Right(Left(unit));
    } on TheMovieDBException catch (e) {
      return Left(TheMovieDBFailure.generalError(
          statusCode: e.statusCode, message: e.message));
    } catch (e) {
      return const Left(TheMovieDBFailure.generalError(
          statusCode: -1, message: 'Unknown error'));
    }
  }
}
