import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie(
      {required String name,
      required Uri poster,
      required DateTime releaseDate,
      required double userScore}) = _Movie;
}
