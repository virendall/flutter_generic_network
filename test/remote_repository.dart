import 'package:network_package/network_client.dart';

class RemoteRepository {
  late final NetworkService networkService;
  late final String baseURL;

  RemoteRepository({
    required this.networkService,
    this.baseURL = "https://www.example.com",
  });

  Future<String> fetchToken({
    required String idToken,
    String path = "auth",
  }) async {
    var params = {
      "data": {"idToken": idToken},
    };
    NetworkRequest request = NetworkRequest(
        type: RequestType.POST,
        path: "$baseURL/$path",
        data: RequestBody.json(params));
    Either<String, NetworkException> response = await networkService.execute(
        request: request,
        parser: (response, code) {
          return response;
        });
    if (response.isLeft()) {
      return response.asLeft();
    } else {
      throw response.asRight();
    }
  }
}
