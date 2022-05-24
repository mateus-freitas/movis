import 'package:flutter/material.dart';
import 'package:movis/domain/movies_list/movie.dart';
import 'package:movis/presentation/core/components/scaffold/app_scaffold.dart';

class MovieInfoPage extends StatefulWidget {
  final Movie movie;
  const MovieInfoPage({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieInfoPage> createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage> {
  Movie get _movie => widget.movie;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: _movie.title,
      body: Container(color: Colors.blue),
    );
  }
}
