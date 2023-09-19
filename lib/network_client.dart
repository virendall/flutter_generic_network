import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'network_exception.dart';
import 'network_request.dart';
import 'network_service.dart';

export 'network_exception.dart';
export 'network_request.dart';
export 'network_service.dart';
export 'request_body.dart';
export 'package:dartz/dartz.dart';
export 'package:dio/dio.dart';

/// A Network Service provider which use DIO to make the network calls.
class NetworkClient implements NetworkService {
  NetworkClient({
    required dioClient,
  }) : _dio = dioClient;

  final Dio _dio;

  factory NetworkClient.defaultDio({
    Map<String, String> headers = const {
      'content-type': 'application/json; charset=utf-8'
    },
    int connectTimeout = 5,
    int receiveTimeout = 3,
  }) {
    final dio = Dio()
      ..options.headers = headers
      ..options.connectTimeout = Duration(seconds: connectTimeout) // 5 seconds
      ..options.receiveTimeout = Duration(seconds: receiveTimeout); // 3 seconds
    return NetworkClient(
      dioClient: dio,
    );
  }

  NetworkClient enableLogging() {
    _dio.interceptors.add(_Logging());
    return this;
  }

  // ignore: constant_identifier_names
  static const AUTH_KEY = "Authorization";

  NetworkClient removeBasicAuth() {
    _dio.options.headers.remove(AUTH_KEY);
    return this;
  }

  NetworkClient addBasicAuth(String accessToken) {
    var headers = _dio.options.headers;
    headers[AUTH_KEY] = 'Bearer $accessToken';
    _dio.options.headers = headers;
    return this;
  }

  @override
  Future<Either<T, NetworkException>> execute<T>({
    required NetworkRequest request,
    required T Function({dynamic response, int? statusCode}) parser,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final req = _PreparedURLRequest<T>(
      request,
      parser,
      _dio,
      {..._dio.options.headers, ...(request.headers ?? {})},
      onSendProgress,
      onReceiveProgress,
    );
    try {
      return await compute(
        _executeRequest<T>,
        req,
      );
    } catch (error) {
      final errorText = error.toString();
      var errorCode = -1;
      if (error is DioException) {
        errorCode = error.response?.statusCode ?? errorCode;
      }
      return Right(
          NetworkException(errorCode: errorCode, errorMessage: errorText));
    }
  }

  Future<Either<T, NetworkException>> _executeRequest<T>(
    _PreparedURLRequest request,
  ) async {
    dynamic body = request.request.data.whenOrNull(
      json: (data) => data,
      text: (data) => data,
    );
    final response = await request.dio.request(
      request.request.path,
      data: body,
      queryParameters: request.request.queryParams,
      options: Options(
        method: request.request.type.name,
        headers: request.headers,
      ),
      onSendProgress: request.onSendProgress,
      onReceiveProgress: request.onReceiveProgress,
    );
    final T = request.parser(
        response: response.data, statusCode: response.statusCode);
    return Left(T);
  }
}

class _PreparedURLRequest<T> {
  const _PreparedURLRequest(
    this.request,
    this.parser,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );

  final NetworkRequest request;
  final T Function({dynamic response, int? statusCode}) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}

class _Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint(
        'onRequest URL: ${options.uri} method:${options.method} headers: ${options.headers} body: ${options.data} queryParams:${options.queryParameters}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        "onResponse: URL: ${response.requestOptions.path} response:${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
        "onError: URL: ${err.requestOptions.path} Error: ${err.message}");
    super.onError(err, handler);
  }
}

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value; //
  L asLeft() => (this as Left).value;
}
