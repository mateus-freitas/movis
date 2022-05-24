// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$$_MovieDtoFromJson(Map<String, dynamic> json) => _$_MovieDto(
      title: json['title'] as String,
      posterPath: json['posterPath'] as String,
      id: json['id'] as int,
      releaseDate: json['releaseDate'] as String,
      voteAverage: (json['voteAverage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'posterPath': instance.posterPath,
      'id': instance.id,
      'releaseDate': instance.releaseDate,
      'voteAverage': instance.voteAverage,
    };
