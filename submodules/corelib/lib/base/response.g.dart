// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIResponse<T> _$APIResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return APIResponse<T>(
    json['code'] as int,
    json['message'] as String,
    fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$APIResponseToJson<T>(
  APIResponse<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };