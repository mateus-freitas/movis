// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/movies_list/movies_list_controller.dart' as _i3;
import '../application/movies_list/movies_list_view_model.dart' as _i5;
import '../domain/movies_list/i_movies_list_repository.dart' as _i4;
import '../networking/tmdb_dio_client.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IMoviesListController>(
      () => _i3.MoviesListController(get<_i4.IMoviesListRepository>()));
  gh.factory<_i5.IMoviesListViewModel>(() => _i5.MoviesListViewModel());
  gh.singleton<_i6.TMDBClient>(_i6.TMDBClient());
  return get;
}
