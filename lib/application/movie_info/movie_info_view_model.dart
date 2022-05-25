import 'package:injectable/injectable.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/domain/movie_info/movie_info.dart';
import 'package:movis/domain/movies_list/movie.dart';

abstract class IMovieInfoViewModel {
  Movie get movie;
  MovieInfo? get movieInfo;
  set movieInfo(MovieInfo? newValue);
  TheMovieDBFailure? get tmdbFailure;
  set tmdbFailure(TheMovieDBFailure? newValue);
  // @disposeMethod
  // void dispose();
}

@Injectable(as: IMovieInfoViewModel)
class MovieInfoViewModel implements IMovieInfoViewModel {
  final Movie _movie;
  MovieInfo? _info;
  TheMovieDBFailure? _tmdbFailure;

  MovieInfoViewModel(@factoryParam this._movie);

  // @override
  // @disposeMethod
  // void dispose() {
  //   _info = null;
  //   _tmdbFailure = null;
  // }

  @override
  TheMovieDBFailure? get tmdbFailure => _tmdbFailure;

  @override
  set tmdbFailure(TheMovieDBFailure? newValue) {
    _tmdbFailure = newValue;
  }

  @override
  MovieInfo? get movieInfo => _info;

  @override
  set movieInfo(MovieInfo? newValue) {
    _info = newValue;
  }

  @override
  Movie get movie => _movie;
}
