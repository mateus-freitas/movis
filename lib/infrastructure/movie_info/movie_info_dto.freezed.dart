// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieInfoDto _$MovieInfoDtoFromJson(Map<String, dynamic> json) {
  return _MovieInfoDto.fromJson(json);
}

/// @nodoc
mixin _$MovieInfoDto {
  String? get overview => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get genres => throw _privateConstructorUsedError;
  Duration? get runtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieInfoDtoCopyWith<MovieInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoDtoCopyWith<$Res> {
  factory $MovieInfoDtoCopyWith(
          MovieInfoDto value, $Res Function(MovieInfoDto) then) =
      _$MovieInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {String? overview,
      String? tagline,
      List<Map<String, dynamic>> genres,
      Duration? runtime});
}

/// @nodoc
class _$MovieInfoDtoCopyWithImpl<$Res> implements $MovieInfoDtoCopyWith<$Res> {
  _$MovieInfoDtoCopyWithImpl(this._value, this._then);

  final MovieInfoDto _value;
  // ignore: unused_field
  final $Res Function(MovieInfoDto) _then;

  @override
  $Res call({
    Object? overview = freezed,
    Object? tagline = freezed,
    Object? genres = freezed,
    Object? runtime = freezed,
  }) {
    return _then(_value.copyWith(
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieInfoDtoCopyWith<$Res>
    implements $MovieInfoDtoCopyWith<$Res> {
  factory _$$_MovieInfoDtoCopyWith(
          _$_MovieInfoDto value, $Res Function(_$_MovieInfoDto) then) =
      __$$_MovieInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? overview,
      String? tagline,
      List<Map<String, dynamic>> genres,
      Duration? runtime});
}

/// @nodoc
class __$$_MovieInfoDtoCopyWithImpl<$Res>
    extends _$MovieInfoDtoCopyWithImpl<$Res>
    implements _$$_MovieInfoDtoCopyWith<$Res> {
  __$$_MovieInfoDtoCopyWithImpl(
      _$_MovieInfoDto _value, $Res Function(_$_MovieInfoDto) _then)
      : super(_value, (v) => _then(v as _$_MovieInfoDto));

  @override
  _$_MovieInfoDto get _value => super._value as _$_MovieInfoDto;

  @override
  $Res call({
    Object? overview = freezed,
    Object? tagline = freezed,
    Object? genres = freezed,
    Object? runtime = freezed,
  }) {
    return _then(_$_MovieInfoDto(
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieInfoDto implements _MovieInfoDto {
  const _$_MovieInfoDto(
      {required this.overview,
      required this.tagline,
      required final List<Map<String, dynamic>> genres,
      required this.runtime})
      : _genres = genres;

  factory _$_MovieInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_MovieInfoDtoFromJson(json);

  @override
  final String? overview;
  @override
  final String? tagline;
  final List<Map<String, dynamic>> _genres;
  @override
  List<Map<String, dynamic>> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final Duration? runtime;

  @override
  String toString() {
    return 'MovieInfoDto(overview: $overview, tagline: $tagline, genres: $genres, runtime: $runtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieInfoDto &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other.runtime, runtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(runtime));

  @JsonKey(ignore: true)
  @override
  _$$_MovieInfoDtoCopyWith<_$_MovieInfoDto> get copyWith =>
      __$$_MovieInfoDtoCopyWithImpl<_$_MovieInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieInfoDtoToJson(this);
  }
}

abstract class _MovieInfoDto implements MovieInfoDto {
  const factory _MovieInfoDto(
      {required final String? overview,
      required final String? tagline,
      required final List<Map<String, dynamic>> genres,
      required final Duration? runtime}) = _$_MovieInfoDto;

  factory _MovieInfoDto.fromJson(Map<String, dynamic> json) =
      _$_MovieInfoDto.fromJson;

  @override
  String? get overview => throw _privateConstructorUsedError;
  @override
  String? get tagline => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get genres => throw _privateConstructorUsedError;
  @override
  Duration? get runtime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieInfoDtoCopyWith<_$_MovieInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
