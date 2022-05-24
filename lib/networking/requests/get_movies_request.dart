import 'package:movis/infrastructure/networking/i_dio_client.dart';
import 'package:movis/infrastructure/networking/i_request_handler.dart';

class GetTrendingMoviesRequest extends IRequestHandler {
  final String _timeWindow;

  GetTrendingMoviesRequest._(this._timeWindow);

  GetTrendingMoviesRequest.day() : this._('day');

  GetTrendingMoviesRequest.week() : this._('week');

  @override
  RequestMethod get method => RequestMethod.get;

  @override
  String get path => '/trending/movie/$_timeWindow';

  @override
  Map<String, String>? get queryParameters => null;
}
