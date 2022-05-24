import 'package:flutter/material.dart';
import 'package:movis/application/movies_list/movies_list_controller.dart';
import 'package:movis/application/movies_list/movies_list_view_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue),
    );
  }
}
