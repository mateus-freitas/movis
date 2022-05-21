// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieInfo {
  String get overview => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  Duration get movieLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieInfoCopyWith<MovieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoCopyWith<$Res> {
  factory $MovieInfoCopyWith(MovieInfo value, $Res Function(MovieInfo) then) =
      _$MovieInfoCopyWithImpl<$Res>;
  $Res call(
      {String overview,
      String subtitle,
      List<String> genres,
      Duration movieLength});
}

/// @nodoc
class _$MovieInfoCopyWithImpl<$Res> implements $MovieInfoCopyWith<$Res> {
  _$MovieInfoCopyWithImpl(this._value, this._then);

  final MovieInfo _value;
  // ignore: unused_field
  final $Res Function(MovieInfo) _then;

  @override
  $Res call({
    Object? overview = freezed,
    Object? subtitle = freezed,
    Object? genres = freezed,
    Object? movieLength = freezed,
  }) {
    return _then(_value.copyWith(
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      movieLength: movieLength == freezed
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieInfoCopyWith<$Res> implements $MovieInfoCopyWith<$Res> {
  factory _$$_MovieInfoCopyWith(
          _$_MovieInfo value, $Res Function(_$_MovieInfo) then) =
      __$$_MovieInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String overview,
      String subtitle,
      List<String> genres,
      Duration movieLength});
}

/// @nodoc
class __$$_MovieInfoCopyWithImpl<$Res> extends _$MovieInfoCopyWithImpl<$Res>
    implements _$$_MovieInfoCopyWith<$Res> {
  __$$_MovieInfoCopyWithImpl(
      _$_MovieInfo _value, $Res Function(_$_MovieInfo) _then)
      : super(_value, (v) => _then(v as _$_MovieInfo));

  @override
  _$_MovieInfo get _value => super._value as _$_MovieInfo;

  @override
  $Res call({
    Object? overview = freezed,
    Object? subtitle = freezed,
    Object? genres = freezed,
    Object? movieLength = freezed,
  }) {
    return _then(_$_MovieInfo(
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      movieLength: movieLength == freezed
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_MovieInfo implements _MovieInfo {
  const _$_MovieInfo(
      {required this.overview,
      required this.subtitle,
      required final List<String> genres,
      required this.movieLength})
      : _genres = genres;

  @override
  final String overview;
  @override
  final String subtitle;
  final List<String> _genres;
  @override
  List<String> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final Duration movieLength;

  @override
  String toString() {
    return 'MovieInfo(overview: $overview, subtitle: $subtitle, genres: $genres, movieLength: $movieLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieInfo &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other.movieLength, movieLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(movieLength));

  @JsonKey(ignore: true)
  @override
  _$$_MovieInfoCopyWith<_$_MovieInfo> get copyWith =>
      __$$_MovieInfoCopyWithImpl<_$_MovieInfo>(this, _$identity);
}

abstract class _MovieInfo implements MovieInfo {
  const factory _MovieInfo(
      {required final String overview,
      required final String subtitle,
      required final List<String> genres,
      required final Duration movieLength}) = _$_MovieInfo;

  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get genres => throw _privateConstructorUsedError;
  @override
  Duration get movieLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieInfoCopyWith<_$_MovieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
