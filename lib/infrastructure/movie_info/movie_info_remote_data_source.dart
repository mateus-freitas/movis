import 'package:injectable/injectable.dart';
import 'package:movis/core/error/exceptions.dart';
import 'package:movis/infrastructure/movie_info/movie_info_dto.dart';
import 'package:movis/infrastructure/networking/i_dio_client.dart';
import 'package:movis/networking/requests/get_movie_details_request.dart';
import 'package:movis/networking/tmdb_dio_client.dart';

abstract class IMovieInfoRemoteDataSource {
  // Performs a [GetMovieDetailsRequest] call to TMDB API
  ///
  /// Throws a [TheMovieDBException] for all possible errors
  Future<MovieInfoDto> getMovieInfo(int id, String? lang);
}

@Injectable(as: IMovieInfoRemoteDataSource)
class MovieInfoRemoteDataSourceImpl implements IMovieInfoRemoteDataSource {
  final IDioClient _client;

  MovieInfoRemoteDataSourceImpl(@Named.from(TMDBClient) this._client);

  @override
  Future<MovieInfoDto> getMovieInfo(int id, String? lang) async {
    try {
      final request = GetMovieDetailsRequest(id, lang);
      final response = await _client.perform(request);
      final data = response.data;
      if (data is! Map<String, dynamic>) {
        throw TheMovieDBException(
            statusCode: -1,
            message: 'The response data is in the wrong format.');
      }
      return MovieInfoDto.fromJson(data);
    } on TheMovieDBException catch (_) {
      rethrow;
    } catch (e) {
      print(e);
      throw TheMovieDBException(
          statusCode: -1, message: 'Error during request');
    }
  }
}
