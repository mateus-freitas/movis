import 'package:injectable/injectable.dart';
import 'package:movis/infrastructure/core/constants.dart' as constants;
import 'package:movis/infrastructure/networking/i_dio_client.dart';

@named
@Singleton(as: IDioClient)
class TMDBClient extends IDioClient {
  @override
  int get baseConnectTimeout => constants.defaultConnectTimeout;

  @override
  String get baseContentType => 'application/json';

  @override
  Map<String, String>? get baseHeaders => {};

  @override
  Map<String, String> get baseQueryParameters =>
      {'api_key': constants.tmdbApiKey};

  @override
  int get baseReceiveTimeout => constants.defaultReceiveTimeout;

  @override
  String get baseUrl => constants.tmdbBaseUrl;
}
