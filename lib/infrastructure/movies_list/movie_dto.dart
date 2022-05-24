import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movis/domain/movies_list/movie.dart';

part 'movie_dto.freezed.dart';

@freezed
class MovieDto with _$MovieDto {
  const factory MovieDto(
      {required String name,
      required Uri poster,
      required DateTime releaseDate,
      required double userScore}) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}

extension MovieDtoX on MovieDto {
  Movie toDomain() => Movie(
      name: name,
      poster: poster,
      releaseDate: releaseDate,
      userScore: userScore);
}
