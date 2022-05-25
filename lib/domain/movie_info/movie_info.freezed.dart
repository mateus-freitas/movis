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
  String? get overview => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  List<MovieGenre> get genres => throw _privateConstructorUsedError;
  Duration? get runtime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieInfoCopyWith<MovieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoCopyWith<$Res> {
  factory $MovieInfoCopyWith(MovieInfo value, $Res Function(MovieInfo) then) =
      _$MovieInfoCopyWithImpl<$Res>;
  $Res call(
      {String? overview,
      String? tagline,
      List<MovieGenre> genres,
      Duration? runtime});
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
              as List<MovieGenre>,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
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
      {String? overview,
      String? tagline,
      List<MovieGenre> genres,
      Duration? runtime});
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
    Object? tagline = freezed,
    Object? genres = freezed,
    Object? runtime = freezed,
  }) {
    return _then(_$_MovieInfo(
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
              as List<MovieGenre>,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$_MovieInfo implements _MovieInfo {
  const _$_MovieInfo(
      {required this.overview,
      required this.tagline,
      required final List<MovieGenre> genres,
      required this.runtime})
      : _genres = genres;

  @override
  final String? overview;
  @override
  final String? tagline;
  final List<MovieGenre> _genres;
  @override
  List<MovieGenre> get genres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final Duration? runtime;

  @override
  String toString() {
    return 'MovieInfo(overview: $overview, tagline: $tagline, genres: $genres, runtime: $runtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieInfo &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other.runtime, runtime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(runtime));

  @JsonKey(ignore: true)
  @override
  _$$_MovieInfoCopyWith<_$_MovieInfo> get copyWith =>
      __$$_MovieInfoCopyWithImpl<_$_MovieInfo>(this, _$identity);
}

abstract class _MovieInfo implements MovieInfo {
  const factory _MovieInfo(
      {required final String? overview,
      required final String? tagline,
      required final List<MovieGenre> genres,
      required final Duration? runtime}) = _$_MovieInfo;

  @override
  String? get overview => throw _privateConstructorUsedError;
  @override
  String? get tagline => throw _privateConstructorUsedError;
  @override
  List<MovieGenre> get genres => throw _privateConstructorUsedError;
  @override
  Duration? get runtime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieInfoCopyWith<_$_MovieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieGenre {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieGenreCopyWith<MovieGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieGenreCopyWith<$Res> {
  factory $MovieGenreCopyWith(
          MovieGenre value, $Res Function(MovieGenre) then) =
      _$MovieGenreCopyWithImpl<$Res>;
  $Res call({int id, String title});
}

/// @nodoc
class _$MovieGenreCopyWithImpl<$Res> implements $MovieGenreCopyWith<$Res> {
  _$MovieGenreCopyWithImpl(this._value, this._then);

  final MovieGenre _value;
  // ignore: unused_field
  final $Res Function(MovieGenre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieGenreCopyWith<$Res>
    implements $MovieGenreCopyWith<$Res> {
  factory _$$_MovieGenreCopyWith(
          _$_MovieGenre value, $Res Function(_$_MovieGenre) then) =
      __$$_MovieGenreCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title});
}

/// @nodoc
class __$$_MovieGenreCopyWithImpl<$Res> extends _$MovieGenreCopyWithImpl<$Res>
    implements _$$_MovieGenreCopyWith<$Res> {
  __$$_MovieGenreCopyWithImpl(
      _$_MovieGenre _value, $Res Function(_$_MovieGenre) _then)
      : super(_value, (v) => _then(v as _$_MovieGenre));

  @override
  _$_MovieGenre get _value => super._value as _$_MovieGenre;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_MovieGenre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieGenre implements _MovieGenre {
  const _$_MovieGenre({required this.id, required this.title});

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'MovieGenre(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieGenre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_MovieGenreCopyWith<_$_MovieGenre> get copyWith =>
      __$$_MovieGenreCopyWithImpl<_$_MovieGenre>(this, _$identity);
}

abstract class _MovieGenre implements MovieGenre {
  const factory _MovieGenre(
      {required final int id, required final String title}) = _$_MovieGenre;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieGenreCopyWith<_$_MovieGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
