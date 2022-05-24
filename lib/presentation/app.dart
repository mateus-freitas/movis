import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';
import 'package:movis/presentation/core/router/router.dart';
import 'package:movis/presentation/core/router/routes.dart';
import 'package:movis/presentation/core/theme/app_theme.dart';

class MovisApp extends StatelessWidget {
  const MovisApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoute.home.name,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('pt', ''),
      ],
      onGenerateTitle: (BuildContext context) => localize(context).appTitle,
      theme: darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
