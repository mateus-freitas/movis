import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie(
      {required int id,
      required String title,
      required Uri poster,
      required DateTime releaseDate,
      required double userScore}) = _Movie;
}

extension MovieHelpers on Movie {
  int getScoreAsPercentage() => (userScore * 10).floor();
}
