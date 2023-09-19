import 'package:network_package/request_body.dart';

class NetworkRequest {
  const NetworkRequest({
    required this.type,
    required this.path,
    required this.data,
    this.queryParams,
    this.headers,
  });

  final RequestType type;
  final String path;
  final RequestBody data;
  final Map<String, dynamic>? queryParams;
  final Map<String, String>? headers;
}

