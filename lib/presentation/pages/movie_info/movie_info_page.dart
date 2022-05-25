import 'package:flutter/material.dart';
import 'package:movis/application/movie_info/movie_info_controller.dart';
import 'package:movis/application/movie_info/movie_info_view_model.dart';
import 'package:movis/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:movis/presentation/core/components/states/error_state_view.dart';
import 'package:movis/presentation/core/constants.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';
import 'package:movis/presentation/core/responsive/responsive_layout.dart';
import 'package:movis/presentation/core/theme/app_colors.dart';

class MovieInfoPage extends StatefulWidget {
  final IMovieInfoController controller;
  final IMovieInfoViewModel viewModel;

  const MovieInfoPage(
      {Key? key, required this.controller, required this.viewModel})
      : super(key: key);

  @override
  State<MovieInfoPage> createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage> {
  IMovieInfoViewModel get _vm => widget.viewModel;
  IMovieInfoController get _controller => widget.controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _loadData();
    });
  }

  void _loadData() async {
    await _controller.loadMovieInfo(_vm, localize(context).localeName);
    setState(() {});
  }

  void _onReload() {
    setState(() {
      _vm.tmdbFailure = null;
      _loadData();
    });
  }

  Widget get _movieTitle => Text(
        _vm.movie.title,
        style: Theme.of(context).textTheme.headline2,
      );

  Widget get _releaseYearAndScore => Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.getColorForMovieScore(_vm.movie.userScore)),
            padding: const EdgeInsets.symmetric(
                horizontal: Margin.nano, vertical: 2),
            child: Text('${(_vm.movie.userScore * 10).floor()}%'),
          ),
          const SizedBox(width: Margin.nano),
          Text(
            '${_vm.movie.releaseDate.year}',
            style: const TextStyle(color: AppColors.neutral80),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: _vm.movie.title,
      body: ResponsiveLayout(
        large: Container(),
        small: ListView(
          padding: const EdgeInsets.all(Margin.xs),
          children: [
            Hero(
                tag: _vm.movie.poster.toString(),
                child: Image.network(_vm.movie.poster.toString())),
            const SizedBox(height: Margin.xxs),
            _movieTitle,
            const SizedBox(height: Margin.quarck),
            _releaseYearAndScore,
            const SizedBox(height: Margin.xxs),
            _LoadedContent(
              vm: _vm,
              onReload: _onReload,
            )
          ],
        ),
      ),
    );
  }
}

class _LoadedContent extends StatelessWidget {
  final IMovieInfoViewModel vm;
  final void Function() onReload;

  const _LoadedContent({Key? key, required this.vm, required this.onReload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (vm.tmdbFailure != null) {
      return ErrorStateView(
        errorMessage: vm.tmdbFailure!.when<String>(
          generalError: (statusCode, message) =>
              localize(context).generalErrorMessage,
          serviceOffline: (statusCode, message) =>
              localize(context).tmdbOffline,
          invalidId: (statusCode, message) =>
              localize(context).generalErrorMessage,
        ),
        onTryAgain: onReload,
      );
    }
    if (vm.movieInfo == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    final info = vm.movieInfo!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (info.tagline != null && info.tagline!.isNotEmpty) ...[
          Text(
            info.tagline!,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: AppColors.neutral90,
                ),
          ),
          const SizedBox(height: Margin.nano),
        ],
        Text(
          localize(context).overview,
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(height: Margin.quarck),
        Text(info.overview != null
            ? info.overview!
            : localize(context).noOverview),
      ],
    );
  }
}
