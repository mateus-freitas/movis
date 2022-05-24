import 'package:flutter/material.dart';
import 'package:movis/presentation/core/theme/app_colors.dart';

class MoviePosterView extends StatelessWidget {
  final Uri posterImage;
  final String title;
  final double movieScore;

  const MoviePosterView(
      {Key? key,
      required this.posterImage,
      required this.title,
      required this.movieScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Image.network(posterImage.toString()),
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
    );
  }
}
