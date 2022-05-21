class TheMovieDBException implements Exception {
  final String? code;

  TheMovieDBException({this.code}) : super();
}

class FavoritesDBException implements Exception {}
