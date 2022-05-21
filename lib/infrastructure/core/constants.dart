import 'package:flutter/foundation.dart';
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

String get baseUrl {
  return dotenv.get(_baseUrlKey);
}

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

const double largeScreenSize = 1366;
const double mediumScreenSize = 668;
const double smallScreenSize = 360;

bool get isAppleDevice {
  return defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS;
}

bool get isDesktop {
  return defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.linux;
}
