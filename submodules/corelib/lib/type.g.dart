// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HYResponse<T> _$HYResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return HYResponse<T>(
    json['code'] as int,
    json['message'] as String,
    fromJsonT(json['data']),
  );
}

Map<String, dynamic> _$HYResponseToJson<T>(
  HYResponse<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': toJsonT(instance.data),
    };
