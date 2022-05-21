import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_info.freezed.dart';

@freezed
abstract class MovieInfo with _$MovieInfo {
  const factory MovieInfo(
      {required String overview,
      required String subtitle,
      required List<String> genres,
      required Duration movieLength}) = _MovieInfo;
}
