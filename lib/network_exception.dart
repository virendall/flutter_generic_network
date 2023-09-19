class NetworkException implements Exception {
  int errorCode;
  String errorMessage;

  NetworkException({required this.errorCode, required this.errorMessage});

  @override
  String toString() {
    return errorMessage;
  }
}
