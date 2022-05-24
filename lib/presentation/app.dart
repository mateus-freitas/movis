import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/injection.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';
import 'package:movis/presentation/pages/home/movies_list_page.dart';

class MovisApp extends StatelessWidget {
  const MovisApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoviesListPage(
        controller: sl<IMoviesListController>(),
        viewModel: sl<IMoviesListViewModel>(),
      ),
    );
  }
}
