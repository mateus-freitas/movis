// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
mixin _$MovieDto {
  String get title => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String posterPath,
      int id,
      String releaseDate,
      double voteAverage});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? id = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$$_MovieDtoCopyWith(
          _$_MovieDto value, $Res Function(_$_MovieDto) then) =
      __$$_MovieDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String posterPath,
      int id,
      String releaseDate,
      double voteAverage});
}

/// @nodoc
class __$$_MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$$_MovieDtoCopyWith<$Res> {
  __$$_MovieDtoCopyWithImpl(
      _$_MovieDto _value, $Res Function(_$_MovieDto) _then)
      : super(_value, (v) => _then(v as _$_MovieDto));

  @override
  _$_MovieDto get _value => super._value as _$_MovieDto;

  @override
  $Res call({
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? id = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$_MovieDto(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDto implements _MovieDto {
  const _$_MovieDto(
      {required this.title,
      required this.posterPath,
      required this.id,
      required this.releaseDate,
      required this.voteAverage});

  factory _$_MovieDto.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDtoFromJson(json);

  @override
  final String title;
  @override
  final String posterPath;
  @override
  final int id;
  @override
  final String releaseDate;
  @override
  final double voteAverage;

  @override
  String toString() {
    return 'MovieDto(title: $title, posterPath: $posterPath, id: $id, releaseDate: $releaseDate, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDto &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(voteAverage));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDtoCopyWith<_$_MovieDto> get copyWith =>
      __$$_MovieDtoCopyWithImpl<_$_MovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDtoToJson(this);
  }
}

abstract class _MovieDto implements MovieDto {
  const factory _MovieDto(
      {required final String title,
      required final String posterPath,
      required final int id,
      required final String releaseDate,
      required final double voteAverage}) = _$_MovieDto;

  factory _MovieDto.fromJson(Map<String, dynamic> json) = _$_MovieDto.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get posterPath => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get releaseDate => throw _privateConstructorUsedError;
  @override
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDtoCopyWith<_$_MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
