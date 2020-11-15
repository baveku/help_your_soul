import 'package:json_annotation/json_annotation.dart';
part 'type.g.dart';

// API Data Transfer Object
@JsonSerializable(genericArgumentFactories: true)
class HYResponse<T> {
  int code;
  String message;
  T data;

  HYResponse(this.code, this.message, this.data);

  factory HYResponse.fromJson(Map<String, dynamic> json, T Function(Object json) fromJsonT) => _$HYResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$HYResponseToJson(this, toJsonT);
}

// Repository
class Repository<S extends Service> {
  S service;

  Repository(this.service);
}

// Service
abstract class Service {}
