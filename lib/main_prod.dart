import 'package:flutter/material.dart';
import 'package:movis/core/injection.dart';
import 'package:movis/infrastructure/core/constants.dart';
import 'package:movis/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Env.prod);
  await Future.wait([setEnvironment(Env.prod)]);

  runApp(const MovisApp());
}
