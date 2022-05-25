import 'package:flutter/material.dart';
import 'package:movis/application/movie_info/movie_info_controller.dart';
import 'package:movis/application/movie_info/movie_info_view_model.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/core/injection.dart';
import 'package:movis/presentation/core/components/buttons/app_button/app_button.dart';
import 'package:movis/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:movis/presentation/core/constants.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';
import 'package:movis/presentation/core/responsive/responsive_layout.dart';
import 'package:movis/presentation/core/router/router.dart';
import 'package:movis/presentation/pages/home/widgets/movie_poster_view.dart';
import 'package:movis/presentation/pages/movie_info/movie_info_page.dart';

class MoviesListPage extends StatefulWidget {
  final IMoviesListController controller;
  final IMoviesListViewModel viewModel;

  const MoviesListPage(
      {Key? key, required this.controller, required this.viewModel})
      : super(key: key);

  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  IMoviesListController get _controller => widget.controller;
  IMoviesListViewModel get _vm => widget.viewModel;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    await _controller.loadMovies(_vm);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: localize(context).appTitle.toLowerCase(),
      titleStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      trailing: AppButton(
        type: ButtonType.text,
        title: localize(context).favorites,
        onPressed: () {},
      ),
      body: SafeArea(child: _MainContent(vm: _vm)),
    );
  }
}

class _MainContent extends StatelessWidget {
  final IMoviesListViewModel vm;

  const _MainContent({Key? key, required this.vm}) : super(key: key);

  int _getGridCrossAxisCount(BuildContext context) {
    if (ResponsiveLayout.isSmallScreen(context)) return 2;
    if (ResponsiveLayout.isLargeScreen(context)) return 5;
    return 4;
  }

  @override
  Widget build(BuildContext context) {
    if (vm.moviesFailure != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(vm.moviesFailure!.when<String>(
            generalError: (statusCode, message) =>
                localize(context).generalErrorMessage,
            serviceOffline: (statusCode, message) =>
                localize(context).tmdbOffline,
            invalidId: (statusCode, message) =>
                localize(context).generalErrorMessage,
          )),
        ],
      );
    }
    if (vm.movies == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Margin.xs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localize(context).popularMovies,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: Margin.xs),
            GridView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: vm.movies!.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _getGridCrossAxisCount(context),
                  childAspectRatio: 44 / 66,
                  mainAxisSpacing: Margin.xxs,
                  crossAxisSpacing: Margin.xxs),
              itemBuilder: (context, index) {
                final movie = vm.movies![index];
                return MoviePosterView(
                  posterImage: movie.poster,
                  title: movie.title,
                  movieScore: movie.userScore,
                  onTap: () {
                    Navigator.of(context).push(getPlatformPageRoute(
                        fullscreenDialog: true,
                        builder: (context) => MovieInfoPage(
                              controller: sl<IMovieInfoController>(),
                              viewModel: sl<IMovieInfoViewModel>(param1: movie),
                            )));
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
