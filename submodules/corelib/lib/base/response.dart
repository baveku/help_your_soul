import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class APIResponse<T> {
  int code;
  String message;
  T data;

  APIResponse(this.code, this.message, this.data);

  factory APIResponse.fromJson(Map<String, dynamic> json, T Function(Object json) fromJsonT) => _$APIResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$APIResponseToJson(this, toJsonT);
}
