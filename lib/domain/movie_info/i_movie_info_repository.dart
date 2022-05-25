import 'package:dartz/dartz.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movie_info/movie_info.dart';

abstract class IMovieInfoRepository {
  Future<Either<TheMovieDBFailure, MovieInfo>> getMovieInfo(
      int id, String? lang);
}
