import 'package:flutter/material.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';
import 'package:movis/presentation/core/constants.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';

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
    return Scaffold(
      body: _MainContent(vm: _vm),
    );
  }
}

class _MainContent extends StatelessWidget {
  final IMoviesListViewModel vm;

  const _MainContent({Key? key, required this.vm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (vm.moviesFailure != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(vm.moviesFailure!.message),
        ],
      );
    }
    if (vm.movies == null) {
      return Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            localize(context).popularMovies,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          GridView.builder(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: vm.movies!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: Margin.xxs,
                crossAxisSpacing: Margin.xxs),
            itemBuilder: (context, index) {
              return Container(color: Colors.red);
            },
          )
        ],
      ),
    );
  }
}
