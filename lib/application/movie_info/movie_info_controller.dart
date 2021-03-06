import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movis/application/movie_info/movie_info_view_model.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movie_info/i_movie_info_repository.dart';

abstract class IMovieInfoController {
  Future<void> loadMovieInfo(IMovieInfoViewModel vm, String? lang);
  Future<Either<TheMovieDBFailure, Either<Unit, Uri>>> getMovieTrailerIfNeeded(
      IMovieInfoViewModel vm, String? lang);
}

@Injectable(as: IMovieInfoController)
class MovieInfoController implements IMovieInfoController {
  final IMovieInfoRepository _repository;

  MovieInfoController(this._repository);

  @override
  Future<void> loadMovieInfo(IMovieInfoViewModel vm, String? lang) async {
    final moviesResult = await _repository.getMovieInfo(vm.movie.id, lang);
    moviesResult.fold((failure) {
      vm.tmdbFailure = failure;
    }, (info) {
      vm.movieInfo = info;
    });
  }

  @override
  Future<Either<TheMovieDBFailure, Either<Unit, Uri>>> getMovieTrailerIfNeeded(
      IMovieInfoViewModel vm, String? lang) async {
    if (vm.movieTrailer != null) {
      return Right(vm.movieTrailer!);
    }
    final moviesResult = await _repository.getMovieTrailer(vm.movie.id, lang);
    return moviesResult.fold((failure) {
      return moviesResult;
    }, (trailer) {
      vm.movieTrailer = trailer;
      return moviesResult;
    });
  }
}
