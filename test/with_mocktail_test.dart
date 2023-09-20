import 'dart:core';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:network_package/network_client.dart';

import 'remote_repository.dart';

class MockNetworkService extends Mock implements NetworkService {}

class MockNetworkRequest extends Mock implements NetworkRequest {}

void main() async {
  late RemoteRepository remoteRepository;
  late MockNetworkService networkService;
  String baseUrl = "https://example.com";
  setUp(() {
    networkService = MockNetworkService();
    remoteRepository = RemoteRepository(
      networkService: networkService,
      baseURL: baseUrl,
    );
    registerFallbackValue(MockNetworkRequest());
  });

  group('Using Mocktail', () {
    test('When Service throw NetworkException', () async {
      Either<String, NetworkException> res =
          Right(NetworkException(code: 503, message: "DioException"));
      // Act
      when(
        () => networkService.execute<String>(
          request: any(named: "request"),
          parser: any(named: "parser"),
        ),
      ).thenAnswer((_) async => res);

      expect(
        () async =>
            await remoteRepository.fetchToken(idToken: "idToken", path: "auth"),
        throwsA(isA<NetworkException>()),
      );
    });

    test('When Service return valid response', () async {
      Either<String, NetworkException> res = const Left("access_token");
      // Act
      when(
        () => networkService.execute<String>(
          request: any(named: "request"),
          parser: any(named: "parser"),
        ),
      ).thenAnswer((_) async => res);
      expect("access_token",
          await remoteRepository.fetchToken(idToken: "idToken", path: "auth"));
    });
  });
}
