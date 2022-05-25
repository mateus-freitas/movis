import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/injection.dart';
import 'package:movis/presentation/core/helpers/constants.dart';
import 'package:movis/presentation/core/router/routes.dart';
import 'package:movis/presentation/pages/home/movies_list_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  AppRoute? route = AppRoutesTransformer.routeFromString(settings.name);

  switch (route) {
    case AppRoute.home:
      final controller = sl<IMoviesListController>();
      final vm = sl<IMoviesListViewModel>();
      return getPlatformPageRoute<void>(
          builder: (context) => MoviesListPage(
                controller: controller,
                viewModel: vm,
              ));
    case AppRoute.favorites:
      return getPlatformPageRoute<void>(
          builder: (context) => Container(), settings: settings);
    default:
      return getPlatformPageRoute<void>(
          builder: (context) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute<T> getPlatformPageRoute<T>({
  required WidgetBuilder builder,
  RouteSettings? settings,
  bool maintainState = true,
  bool fullscreenDialog = false,
  String? iosTitle,
}) {
  if (isAppleDevice) {
    return CupertinoPageRoute<T>(
      builder: builder,
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      title: iosTitle,
    );
  }
  return MaterialPageRoute<T>(
    builder: builder,
    settings: settings,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
  );
}
