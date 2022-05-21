// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadError value) loadError,
    required TResult Function(_SaveError value) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesFailureCopyWith<FavoritesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesFailureCopyWith<$Res> {
  factory $FavoritesFailureCopyWith(
          FavoritesFailure value, $Res Function(FavoritesFailure) then) =
      _$FavoritesFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FavoritesFailureCopyWithImpl<$Res>
    implements $FavoritesFailureCopyWith<$Res> {
  _$FavoritesFailureCopyWithImpl(this._value, this._then);

  final FavoritesFailure _value;
  // ignore: unused_field
  final $Res Function(FavoritesFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadErrorCopyWith<$Res>
    implements $FavoritesFailureCopyWith<$Res> {
  factory _$$_LoadErrorCopyWith(
          _$_LoadError value, $Res Function(_$_LoadError) then) =
      __$$_LoadErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_LoadErrorCopyWithImpl<$Res>
    extends _$FavoritesFailureCopyWithImpl<$Res>
    implements _$$_LoadErrorCopyWith<$Res> {
  __$$_LoadErrorCopyWithImpl(
      _$_LoadError _value, $Res Function(_$_LoadError) _then)
      : super(_value, (v) => _then(v as _$_LoadError));

  @override
  _$_LoadError get _value => super._value as _$_LoadError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_LoadError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadError implements _LoadError {
  const _$_LoadError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritesFailure.loadError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_LoadErrorCopyWith<_$_LoadError> get copyWith =>
      __$$_LoadErrorCopyWithImpl<_$_LoadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) saveError,
  }) {
    return loadError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
  }) {
    return loadError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadError value) loadError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _LoadError implements FavoritesFailure {
  const factory _LoadError({required final String message}) = _$_LoadError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadErrorCopyWith<_$_LoadError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveErrorCopyWith<$Res>
    implements $FavoritesFailureCopyWith<$Res> {
  factory _$$_SaveErrorCopyWith(
          _$_SaveError value, $Res Function(_$_SaveError) then) =
      __$$_SaveErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_SaveErrorCopyWithImpl<$Res>
    extends _$FavoritesFailureCopyWithImpl<$Res>
    implements _$$_SaveErrorCopyWith<$Res> {
  __$$_SaveErrorCopyWithImpl(
      _$_SaveError _value, $Res Function(_$_SaveError) _then)
      : super(_value, (v) => _then(v as _$_SaveError));

  @override
  _$_SaveError get _value => super._value as _$_SaveError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SaveError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveError implements _SaveError {
  const _$_SaveError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FavoritesFailure.saveError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_SaveErrorCopyWith<_$_SaveError> get copyWith =>
      __$$_SaveErrorCopyWithImpl<_$_SaveError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) loadError,
    required TResult Function(String message) saveError,
  }) {
    return saveError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
  }) {
    return saveError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? loadError,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadError value) loadError,
    required TResult Function(_SaveError value) saveError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadError value)? loadError,
    TResult Function(_SaveError value)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class _SaveError implements FavoritesFailure {
  const factory _SaveError({required final String message}) = _$_SaveError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SaveErrorCopyWith<_$_SaveError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TheMovieDBFailure {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) invalidId,
    required TResult Function(int statusCode, String message) serviceOffline,
    required TResult Function(int statusCode, String message) generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
    required TResult Function(_ServiceOffline value) serviceOffline,
    required TResult Function(_General value) generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TheMovieDBFailureCopyWith<TheMovieDBFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheMovieDBFailureCopyWith<$Res> {
  factory $TheMovieDBFailureCopyWith(
          TheMovieDBFailure value, $Res Function(TheMovieDBFailure) then) =
      _$TheMovieDBFailureCopyWithImpl<$Res>;
  $Res call({int statusCode, String message});
}

/// @nodoc
class _$TheMovieDBFailureCopyWithImpl<$Res>
    implements $TheMovieDBFailureCopyWith<$Res> {
  _$TheMovieDBFailureCopyWithImpl(this._value, this._then);

  final TheMovieDBFailure _value;
  // ignore: unused_field
  final $Res Function(TheMovieDBFailure) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InvalidIdCopyWith<$Res>
    implements $TheMovieDBFailureCopyWith<$Res> {
  factory _$$_InvalidIdCopyWith(
          _$_InvalidId value, $Res Function(_$_InvalidId) then) =
      __$$_InvalidIdCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$_InvalidIdCopyWithImpl<$Res>
    extends _$TheMovieDBFailureCopyWithImpl<$Res>
    implements _$$_InvalidIdCopyWith<$Res> {
  __$$_InvalidIdCopyWithImpl(
      _$_InvalidId _value, $Res Function(_$_InvalidId) _then)
      : super(_value, (v) => _then(v as _$_InvalidId));

  @override
  _$_InvalidId get _value => super._value as _$_InvalidId;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_InvalidId(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidId implements _InvalidId {
  const _$_InvalidId({required this.statusCode, required this.message});

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'TheMovieDBFailure.invalidId(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidId &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidIdCopyWith<_$_InvalidId> get copyWith =>
      __$$_InvalidIdCopyWithImpl<_$_InvalidId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) invalidId,
    required TResult Function(int statusCode, String message) serviceOffline,
    required TResult Function(int statusCode, String message) generalError,
  }) {
    return invalidId(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
  }) {
    return invalidId?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
    required TResult Function(_ServiceOffline value) serviceOffline,
    required TResult Function(_General value) generalError,
  }) {
    return invalidId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
  }) {
    return invalidId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(this);
    }
    return orElse();
  }
}

abstract class _InvalidId implements TheMovieDBFailure {
  const factory _InvalidId(
      {required final int statusCode,
      required final String message}) = _$_InvalidId;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidIdCopyWith<_$_InvalidId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceOfflineCopyWith<$Res>
    implements $TheMovieDBFailureCopyWith<$Res> {
  factory _$$_ServiceOfflineCopyWith(
          _$_ServiceOffline value, $Res Function(_$_ServiceOffline) then) =
      __$$_ServiceOfflineCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$_ServiceOfflineCopyWithImpl<$Res>
    extends _$TheMovieDBFailureCopyWithImpl<$Res>
    implements _$$_ServiceOfflineCopyWith<$Res> {
  __$$_ServiceOfflineCopyWithImpl(
      _$_ServiceOffline _value, $Res Function(_$_ServiceOffline) _then)
      : super(_value, (v) => _then(v as _$_ServiceOffline));

  @override
  _$_ServiceOffline get _value => super._value as _$_ServiceOffline;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ServiceOffline(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServiceOffline implements _ServiceOffline {
  const _$_ServiceOffline({required this.statusCode, required this.message});

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'TheMovieDBFailure.serviceOffline(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceOffline &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServiceOfflineCopyWith<_$_ServiceOffline> get copyWith =>
      __$$_ServiceOfflineCopyWithImpl<_$_ServiceOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) invalidId,
    required TResult Function(int statusCode, String message) serviceOffline,
    required TResult Function(int statusCode, String message) generalError,
  }) {
    return serviceOffline(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
  }) {
    return serviceOffline?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
    required TResult orElse(),
  }) {
    if (serviceOffline != null) {
      return serviceOffline(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
    required TResult Function(_ServiceOffline value) serviceOffline,
    required TResult Function(_General value) generalError,
  }) {
    return serviceOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
  }) {
    return serviceOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
    required TResult orElse(),
  }) {
    if (serviceOffline != null) {
      return serviceOffline(this);
    }
    return orElse();
  }
}

abstract class _ServiceOffline implements TheMovieDBFailure {
  const factory _ServiceOffline(
      {required final int statusCode,
      required final String message}) = _$_ServiceOffline;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceOfflineCopyWith<_$_ServiceOffline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GeneralCopyWith<$Res>
    implements $TheMovieDBFailureCopyWith<$Res> {
  factory _$$_GeneralCopyWith(
          _$_General value, $Res Function(_$_General) then) =
      __$$_GeneralCopyWithImpl<$Res>;
  @override
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$_GeneralCopyWithImpl<$Res>
    extends _$TheMovieDBFailureCopyWithImpl<$Res>
    implements _$$_GeneralCopyWith<$Res> {
  __$$_GeneralCopyWithImpl(_$_General _value, $Res Function(_$_General) _then)
      : super(_value, (v) => _then(v as _$_General));

  @override
  _$_General get _value => super._value as _$_General;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_General(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_General implements _General {
  const _$_General({required this.statusCode, required this.message});

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'TheMovieDBFailure.generalError(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_General &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralCopyWith<_$_General> get copyWith =>
      __$$_GeneralCopyWithImpl<_$_General>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode, String message) invalidId,
    required TResult Function(int statusCode, String message) serviceOffline,
    required TResult Function(int statusCode, String message) generalError,
  }) {
    return generalError(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
  }) {
    return generalError?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode, String message)? invalidId,
    TResult Function(int statusCode, String message)? serviceOffline,
    TResult Function(int statusCode, String message)? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidId value) invalidId,
    required TResult Function(_ServiceOffline value) serviceOffline,
    required TResult Function(_General value) generalError,
  }) {
    return generalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
  }) {
    return generalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidId value)? invalidId,
    TResult Function(_ServiceOffline value)? serviceOffline,
    TResult Function(_General value)? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(this);
    }
    return orElse();
  }
}

abstract class _General implements TheMovieDBFailure {
  const factory _General(
      {required final int statusCode,
      required final String message}) = _$_General;

  @override
  int get statusCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralCopyWith<_$_General> get copyWith =>
      throw _privateConstructorUsedError;
}
