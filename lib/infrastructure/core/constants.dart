import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Env { dev, prod }

Future<void> setEnvironment(Env env) async {
  switch (env) {
    case Env.dev:
      await dotenv.load(fileName: '.env_dev');
      break;
    case Env.prod:
      await dotenv.load(fileName: '.env_prod');
      break;
  }
}

const _baseUrlKey = 'BASE_URL';

String get tmdbBaseUrl {
  return dotenv.get(_baseUrlKey);
}

String get tmdbApiKey {
  return dotenv.get('TMDB_API_KEY');
}

String get baseTMDBFullPosterUrl =>
    'https://image.tmdb.org/t/p/w600_and_h900_bestv2';

String get baseTMDBThumbPosterUrl =>
    'https://www.themoviedb.org/t/p/w440_and_h660_face';

const _productionKey = 'PRODUCTION';
bool get isProd => dotenv.get(_productionKey) == 'true';
bool get isDev => dotenv.get(_productionKey) == 'false';

const _defaultReceiveTimeout = 'DEFAULT_RECEIVE_TIMEOUT';

int get defaultReceiveTimeout {
  return int.parse(dotenv.get(_defaultReceiveTimeout));
}

const _defaultConnectTimeout = 'DEFAULT_CONNECT_TIMEOUT';

int get defaultConnectTimeout {
  return int.parse(dotenv.get(_defaultConnectTimeout));
}
