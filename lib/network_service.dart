import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'network_exception.dart';
import 'network_request.dart';

abstract class NetworkService {
  Future<Either<T, NetworkException>> execute<T>({
    required NetworkRequest request,
    required T Function(
      dynamic response,
      int? statusCode,
    ) parser,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  });
}

class _NetworkServiceFallback implements NetworkService {
  late NetworkService primary;
  late NetworkService fallBack;

  _NetworkServiceFallback(this.primary, this.fallBack);

  @override
  Future<Either<T, NetworkException>> execute<T>(
      {required NetworkRequest request,
      required T Function(dynamic response, int? statusCode) parser,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    Either<T, NetworkException> result = await primary.execute(
      request: request,
      parser: parser,
    );
    if (result.isRight()) {
      return await fallBack.execute(
        request: request,
        parser: parser,
        onSendProgress: onReceiveProgress,
        onReceiveProgress: onReceiveProgress,
      );
    }
    return result;
  }
}

extension NetworkServiceFallback on NetworkService {
  NetworkService fallBack(NetworkService fallBack) {
    return _NetworkServiceFallback(this, fallBack);
  }

  NetworkService retry(int n) {
    NetworkService service = this;
    for (int i = 0; i < n; i++) {
      service = service.fallBack(this);
    }
    return service;
  }
}
