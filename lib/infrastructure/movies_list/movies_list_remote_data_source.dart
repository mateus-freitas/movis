import 'package:movis/infrastructure/movies_list/movie_dto.dart';
import 'package:movis/infrastructure/networking/i_dio_client.dart';

abstract class IMoviesListRemoteDataSource {
  Future<List<MovieDto>> getPopularMovies();
}

class MoviesListRemoteDataSourceImpl implements IMoviesListRemoteDataSource {
  final IDioClient _client;

  MoviesListRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieDto>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }
}
