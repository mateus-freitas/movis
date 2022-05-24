import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/infrastructure/core/constants.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDto with _$MovieDto {
  const factory MovieDto(
      {required String title,
      required String posterPath,
      required int id,
      required String releaseDate,
      required double voteAverage}) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}

extension MovieDtoX on MovieDto {
  Movie toDomain() => Movie(
      id: id,
      title: title,
      poster: Uri.parse('$baseTMDBThumbPosterUrl$posterPath'),
      releaseDate: DateTime.parse(releaseDate),
      userScore: voteAverage);
}
