import 'package:injectable/injectable.dart';
import 'package:movis/core/error/exceptions.dart';
import 'package:movis/infrastructure/movies_list/movie_dto.dart';
import 'package:movis/infrastructure/networking/i_dio_client.dart';
import 'package:movis/networking/requests/get_movies_request.dart';
import 'package:movis/networking/tmdb_dio_client.dart';

abstract class IMoviesListRemoteDataSource {
  // Performs a [GetTrendingMoviesRequest] call to TMDB API
  ///
  /// Throws a [TheMovieDBException] for all possible errors
  Future<List<MovieDto>> getPopularMovies();
}

@Injectable(as: IMoviesListRemoteDataSource)
class MoviesListRemoteDataSourceImpl implements IMoviesListRemoteDataSource {
  final IDioClient _client;

  MoviesListRemoteDataSourceImpl(@Named.from(TMDBClient) this._client);

  @override
  Future<List<MovieDto>> getPopularMovies() async {
    try {
      final moviesRequest = GetTrendingMoviesRequest.week();
      final response = await _client.perform(moviesRequest);
      // print(response.data);
      final data = response.data;
      if (data is! Map<String, dynamic>) {
        throw TheMovieDBException(
            statusCode: -1,
            message: 'The response data is in the wrong format.');
      }
      if (data['success'] == false) {
        throw TheMovieDBException(
            statusCode: data['status_code'], message: data['status_message']);
      }
      final results = data['results'];
      if (results is! List<dynamic>) {
        throw TheMovieDBException(
            statusCode: -1,
            message: 'The response data does not have the expected result');
      }
      return results.map((e) => MovieDto.fromJson(e)).toList();
    } on TheMovieDBException catch (_) {
      rethrow;
    } catch (e) {
      print(e);
      throw TheMovieDBException(
          statusCode: -1, message: 'Error during request');
    }
  }
}
