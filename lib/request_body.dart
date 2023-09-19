import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_body.freezed.dart';

@freezed
class RequestBody with _$RequestBody {
  const factory RequestBody.empty() = EmptyBody;

  const factory RequestBody.json(Map<String, dynamic> data) = JsonBody;

  const factory RequestBody.text(String data) = PlainText;
}

// ignore: constant_identifier_names
enum RequestType { GET, POST, PUT, PATCH, DELETE }
