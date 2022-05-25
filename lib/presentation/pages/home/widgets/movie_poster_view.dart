import 'package:flutter/material.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';
import 'package:movis/presentation/core/theme/app_colors.dart';

class MoviePosterView extends StatelessWidget {
  final Uri posterImage;
  final String title;
  final double movieScore;
  final VoidCallback? onTap;

  const MoviePosterView(
      {Key? key,
      required this.posterImage,
      required this.title,
      required this.movieScore,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);
    return Semantics(
      label:
          '${localize(context).movie}: $title ${localize(context).movieScore}: $movieScore',
      container: true,
      excludeSemantics: true,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
        ),
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: Stack(
            children: [
              Hero(
                  tag: posterImage.toString(),
                  child: Image.network(posterImage.toString())),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black])),
              ),
              Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    color: AppColors.getColorForMovieScore(movieScore),
                    padding: const EdgeInsets.fromLTRB(6, 6, 8, 3),
                    child: Text(
                      movieScore.toStringAsFixed(1),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
