class TheMovieDBException implements Exception {
  final int statusCode;
  final String message;

  TheMovieDBException({required this.statusCode, required this.message})
      : super();
}

class FavoritesDBException implements Exception {}
