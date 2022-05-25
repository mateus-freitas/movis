import 'package:dio/dio.dart';
import 'package:movis/core/error/exceptions.dart';
import 'package:movis/infrastructure/core/constants.dart';
import 'package:movis/infrastructure/networking/i_request_handler.dart';

enum RequestMethod {
  options,
  get,
  head,
  post,
  put,
  patch,
  delete,
  trace,
  connect
}

abstract class IDioClient {
  int get baseConnectTimeout;

  int get baseReceiveTimeout;

  String get baseUrl;

  Map<String, String> get baseQueryParameters => {};

  String get baseContentType;

  Map<String, String>? get baseHeaders;

  Future<Dio> _build() async {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: baseConnectTimeout,
        receiveTimeout: baseReceiveTimeout,
        headers: baseHeaders,
        queryParameters: baseQueryParameters,
        contentType: baseContentType);
    Dio dio = Dio(options);
    if (isDev) {
      dio.interceptors.add(LogInterceptor());
    }
    return dio;
  }

  Future<Response<dynamic>> perform(IRequestHandler request) async {
    try {
      Dio dio = await _build();
      Response<dynamic> response = await dio.request<dynamic>(request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          options: Options(method: request.method.name));

      if (response.data?['success'] == false) {
        throw TheMovieDBException(
            statusCode: response.data['status_code'],
            message: response.data['status_message']);
      }
      return response;
    } catch (_) {
      rethrow;
    }
  }
}
