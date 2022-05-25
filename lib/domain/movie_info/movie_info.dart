import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_info.freezed.dart';

@freezed
class MovieInfo with _$MovieInfo {
  const factory MovieInfo(
      {required String? overview,
      required String? tagline,
      required List<MovieGenre> genres,
      required Duration? runtime}) = _MovieInfo;
}

@freezed
class MovieGenre with _$MovieGenre {
  const factory MovieGenre({required int id, required String title}) =
      _MovieGenre;
}
