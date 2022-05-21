import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:movis/core/injection.config.dart';
import 'package:movis/infrastructure/core/constants.dart';

final sl = GetIt.instance;

@injectableInit
void configureInjection(Env environment) =>
    $initGetIt(sl, environment: environment.name);
