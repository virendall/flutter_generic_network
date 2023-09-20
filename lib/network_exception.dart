class NetworkException implements Exception {
  int code;
  String? message;
  dynamic data;

  NetworkException({required this.code, required this.message, this.data});

  @override
  String toString() {
    return "$code : $message";
  }
}
