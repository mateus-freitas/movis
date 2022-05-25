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

  bool get isLiked;
  set isLiked(bool newValue);
}

@Injectable(as: IMovieInfoViewModel)
class MovieInfoViewModel implements IMovieInfoViewModel {
  final Movie _movie;

  bool _isLiked = false;
  MovieInfo? _info;
  TheMovieDBFailure? _tmdbFailure;

  MovieInfoViewModel(@factoryParam this._movie);

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

  @override
  bool get isLiked => _isLiked;

  @override
  set isLiked(bool newValue) {
    _isLiked = newValue;
  }
}
