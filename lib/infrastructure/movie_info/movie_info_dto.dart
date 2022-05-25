import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movis/domain/movie_info/movie_info.dart';

part 'movie_info_dto.freezed.dart';
part 'movie_info_dto.g.dart';

@freezed
class MovieInfoDto with _$MovieInfoDto {
  const factory MovieInfoDto(
      {required String? overview,
      required String? tagline,
      required List<Map<String, dynamic>> genres,
      required Duration? runtime}) = _MovieInfoDto;

  factory MovieInfoDto.fromJson(Map<String, dynamic> json) =>
      _$MovieInfoDtoFromJson(json);
}

extension MovieInfoDtoX on MovieInfoDto {
  MovieInfo toDomain() => MovieInfo(
      overview: overview,
      tagline: tagline,
      genres:
          genres.map((e) => MovieGenre(id: e['id'], title: e['name'])).toList(),
      runtime: runtime);
}
