import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:network_package/network_client.dart';
import 'package:test/test.dart';

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

void main() async {
  late Dio dio;
  late DioAdapter dioAdapter;
  late RemoteRepository remoteRepository;
  String baseURl = "https://example.com";
  setUp(() {
    dio = Dio(BaseOptions());
    dioAdapter = DioAdapter(dio: dio);
    NetworkClient client = NetworkClient(dioClient: dio);
    remoteRepository =
        RemoteRepository(networkService: client, baseURL: baseURl);
  });
  group('Using Mock Dio Adapter', () {
    test('when dio throw exception', () async {
      String path = "$baseURl/auth";
      dioAdapter.onPost(path, data: Matchers.any, (server) {
        server.throws(
            503,
            DioException(
              requestOptions: RequestOptions(
                path: path,
              ),
            ));
      });
      expect(
        () async =>
            await remoteRepository.fetchToken(idToken: "idToken", path: "auth"),
        throwsA(isA<NetworkException>()),
      );
    });
    test('when server return invalid status code', () async {
      dioAdapter.onPost("$baseURl/auth", data: Matchers.any, (server) {
        server.reply(401, "Invalid Token");
      });
      expect(
        () async =>
            await remoteRepository.fetchToken(idToken: "idToken", path: "auth"),
        throwsA(isA<NetworkException>()),
      );
    });

    test('when server return 200 response', () async {
      dioAdapter.onPost("$baseURl/auth", data: Matchers.any, (server) {
        server.reply(200, "access_token");
      });
      expect("access_token",
          await remoteRepository.fetchToken(idToken: "idToken", path: "auth"));
    });
  });
}
