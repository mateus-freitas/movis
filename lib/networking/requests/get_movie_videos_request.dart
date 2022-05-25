import 'package:movis/infrastructure/networking/i_dio_client.dart';
import 'package:movis/infrastructure/networking/i_request_handler.dart';

class GetMovieVideosRequest extends IRequestHandler {
  final int movieId;
  final String? lang;

  GetMovieVideosRequest(this.movieId, this.lang);

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get path => '/movie/$movieId/videos';

  @override
  Map<String, String>? get queryParameters =>
      lang != null ? {'language': lang!} : null;
}
