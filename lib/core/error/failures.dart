import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class FavoritesFailure with _$FavoritesFailure {
  const factory FavoritesFailure.loadError({required String message}) =
      _LoadError;
  const factory FavoritesFailure.saveError({required String message}) =
      _SaveError;
}

@freezed
class TheMovieDBFailure with _$TheMovieDBFailure {
  const factory TheMovieDBFailure.invalidId(
      {required int statusCode, required String message}) = _InvalidId;
  const factory TheMovieDBFailure.serviceOffline(
      {required int statusCode, required String message}) = _ServiceOffline;
  const factory TheMovieDBFailure.generalError(
      {required int statusCode, required String message}) = _General;
}
