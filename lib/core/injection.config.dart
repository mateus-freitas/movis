// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/movie_info/movie_info_controller.dart' as _i14;
import '../application/movie_info/movie_info_view_model.dart' as _i8;
import '../application/movies_list/movies_list_controller.dart' as _i15;
import '../application/movies_list/movies_list_view_model.dart' as _i13;
import '../domain/movie_info/i_movie_info_repository.dart' as _i6;
import '../domain/movies_list/i_movies_list_repository.dart' as _i11;
import '../domain/movies_list/movie.dart' as _i9;
import '../infrastructure/movie_info/movie_info_remote_data_source.dart' as _i5;
import '../infrastructure/movie_info/movie_info_repository_impl.dart' as _i7;
import '../infrastructure/movies_list/movies_list_remote_data_source.dart'
    as _i10;
import '../infrastructure/movies_list/movies_list_repository.dart' as _i12;
import '../infrastructure/networking/i_dio_client.dart' as _i3;
import '../networking/tmdb_dio_client.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.IDioClient>(_i4.TMDBClient(), instanceName: 'TMDBClient');
  gh.factory<_i5.IMovieInfoRemoteDataSource>(() =>
      _i5.MovieInfoRemoteDataSourceImpl(
          get<_i3.IDioClient>(instanceName: 'TMDBClient')));
  gh.factory<_i6.IMovieInfoRepository>(
      () => _i7.MovieInfoRepositoryImpl(get<_i5.IMovieInfoRemoteDataSource>()));
  gh.factoryParam<_i8.IMovieInfoViewModel, _i9.Movie, dynamic>(
      (_movie, _) => _i8.MovieInfoViewModel(_movie));
  gh.factory<_i10.IMoviesListRemoteDataSource>(() =>
      _i10.MoviesListRemoteDataSourceImpl(
          get<_i3.IDioClient>(instanceName: 'TMDBClient')));
  gh.factory<_i11.IMoviesListRepository>(() =>
      _i12.MoviesListRepositoryImpl(get<_i10.IMoviesListRemoteDataSource>()));
  gh.factory<_i13.IMoviesListViewModel>(() => _i13.MoviesListViewModel());
  gh.factory<_i14.IMovieInfoController>(
      () => _i14.MovieInfoController(get<_i6.IMovieInfoRepository>()));
  gh.factory<_i15.IMoviesListController>(
      () => _i15.MoviesListController(get<_i11.IMoviesListRepository>()));
  return get;
}
