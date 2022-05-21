// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Movie {
  String get name => throw _privateConstructorUsedError;
  Uri get poster => throw _privateConstructorUsedError;
  DateTime get releaseDate => throw _privateConstructorUsedError;
  double get userScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call({String name, Uri poster, DateTime releaseDate, double userScore});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? poster = freezed,
    Object? releaseDate = freezed,
    Object? userScore = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Uri,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userScore: userScore == freezed
          ? _value.userScore
          : userScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  $Res call({String name, Uri poster, DateTime releaseDate, double userScore});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, (v) => _then(v as _$_Movie));

  @override
  _$_Movie get _value => super._value as _$_Movie;

  @override
  $Res call({
    Object? name = freezed,
    Object? poster = freezed,
    Object? releaseDate = freezed,
    Object? userScore = freezed,
  }) {
    return _then(_$_Movie(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as Uri,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userScore: userScore == freezed
          ? _value.userScore
          : userScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Movie implements _Movie {
  const _$_Movie(
      {required this.name,
      required this.poster,
      required this.releaseDate,
      required this.userScore});

  @override
  final String name;
  @override
  final Uri poster;
  @override
  final DateTime releaseDate;
  @override
  final double userScore;

  @override
  String toString() {
    return 'Movie(name: $name, poster: $poster, releaseDate: $releaseDate, userScore: $userScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.poster, poster) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.userScore, userScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(poster),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(userScore));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final String name,
      required final Uri poster,
      required final DateTime releaseDate,
      required final double userScore}) = _$_Movie;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Uri get poster => throw _privateConstructorUsedError;
  @override
  DateTime get releaseDate => throw _privateConstructorUsedError;
  @override
  double get userScore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
