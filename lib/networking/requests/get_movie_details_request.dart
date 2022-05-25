import 'package:movis/infrastructure/networking/i_dio_client.dart';
import 'package:movis/infrastructure/networking/i_request_handler.dart';

class GetMovieDetailsRequest extends IRequestHandler {
  final int movieId;
  final String? lang;

  GetMovieDetailsRequest(this.movieId, this.lang);

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get path => '/movie/$movieId';

  @override
  Map<String, String>? get queryParameters =>
      lang != null ? {'language': lang!} : null;
}
