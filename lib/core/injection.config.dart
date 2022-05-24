// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/movies_list/movies_list_controller.dart' as _i9;
import '../application/movies_list/movies_list_view_model.dart' as _i8;
import '../domain/movies_list/i_movies_list_repository.dart' as _i6;
import '../infrastructure/movies_list/movies_list_remote_data_source.dart'
    as _i5;
import '../infrastructure/movies_list/movies_list_repository.dart' as _i7;
import '../infrastructure/networking/i_dio_client.dart' as _i3;
import '../networking/tmdb_dio_client.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.IDioClient>(_i4.TMDBClient(), instanceName: 'TMDBClient');
  gh.factory<_i5.IMoviesListRemoteDataSource>(() =>
      _i5.MoviesListRemoteDataSourceImpl(
          get<_i3.IDioClient>(instanceName: 'TMDBClient')));
  gh.factory<_i6.IMoviesListRepository>(() =>
      _i7.MoviesListRepositoryImpl(get<_i5.IMoviesListRemoteDataSource>()));
  gh.factory<_i8.IMoviesListViewModel>(() => _i8.MoviesListViewModel());
  gh.factory<_i9.IMoviesListController>(
      () => _i9.MoviesListController(get<_i6.IMoviesListRepository>()));
  return get;
}
