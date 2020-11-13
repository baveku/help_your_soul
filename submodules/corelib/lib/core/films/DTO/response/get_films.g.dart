// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_films.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFilmsResponse _$GetFilmsResponseFromJson(Map<String, dynamic> json) {
  return GetFilmsResponse(
    json['code'] as int,
    json['message'] as String,
    (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Film.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetFilmsResponseToJson(GetFilmsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
