import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Response<T> {
  int code;
  String message;
  T data;
}
