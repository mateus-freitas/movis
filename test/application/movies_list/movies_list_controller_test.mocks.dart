// Mocks generated by Mockito 5.2.0 from annotations
// in movis/test/application/movies_list/movies_list_controller_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:movis/application/movies_list/movies_list_view_model.dart'
    as _i3;
import 'package:movis/core/error/failures.dart' as _i5;
import 'package:movis/domain/movies_list/movie.dart' as _i4;
import 'package:movis/infrastructure/movies_list/movies_list_repository.dart'
    as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [MoviesListViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesListViewModel extends _i1.Mock
    implements _i3.MoviesListViewModel {
  MockMoviesListViewModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set movies(List<_i4.Movie>? newValue) =>
      super.noSuchMethod(Invocation.setter(#movies, newValue),
          returnValueForMissingStub: null);
  @override
  set moviesFailure(_i5.TheMovieDBFailure? newValue) =>
      super.noSuchMethod(Invocation.setter(#moviesFailure, newValue),
          returnValueForMissingStub: null);
}

/// A class which mocks [MoviesListRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesListRepositoryImpl extends _i1.Mock
    implements _i6.MoviesListRepositoryImpl {
  MockMoviesListRepositoryImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i5.TheMovieDBFailure, List<_i4.Movie>>>
      getPopularMovies() => (super.noSuchMethod(
              Invocation.method(#getPopularMovies, []),
              returnValue: Future<
                      _i2.Either<_i5.TheMovieDBFailure, List<_i4.Movie>>>.value(
                  _FakeEither_0<_i5.TheMovieDBFailure, List<_i4.Movie>>()))
          as _i7.Future<_i2.Either<_i5.TheMovieDBFailure, List<_i4.Movie>>>);
}
