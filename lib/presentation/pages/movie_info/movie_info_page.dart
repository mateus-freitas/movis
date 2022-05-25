import 'package:flutter/material.dart';
import 'package:movis/application/movie_info/movie_info_controller.dart';
import 'package:movis/application/movie_info/movie_info_view_model.dart';
import 'package:movis/presentation/core/components/scaffold/app_scaffold.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';

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

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: _vm.movie.title,
      body: Container(color: Colors.blue),
    );
  }
}
