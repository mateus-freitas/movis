// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieInfoDto _$$_MovieInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_MovieInfoDto(
      overview: json['overview'] as String?,
      tagline: json['tagline'] as String?,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      runtime: json['runtime'] == null
          ? null
          : Duration(microseconds: json['runtime'] as int),
    );

Map<String, dynamic> _$$_MovieInfoDtoToJson(_$_MovieInfoDto instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'tagline': instance.tagline,
      'genres': instance.genres,
      'runtime': instance.runtime?.inMicroseconds,
    };
