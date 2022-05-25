import 'package:flutter/material.dart';
import 'package:movis/core/error/failures.dart';
import 'package:movis/presentation/core/localization/app_localizations.dart';

String getMessageFromFailure(BuildContext context, TheMovieDBFailure failure) {
  return failure.when<String>(
    generalError: (statusCode, message) =>
        localize(context).generalErrorMessage,
    serviceOffline: (statusCode, message) => localize(context).tmdbOffline,
    invalidId: (statusCode, message) => localize(context).generalErrorMessage,
  );
}
