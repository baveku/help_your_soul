// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmInfoResponse _$FilmInfoResponseFromJson(Map<String, dynamic> json) {
  return FilmInfoResponse(
    json['code'] as int,
    json['message'] as String,
    json['data'] == null
        ? null
        : Film.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FilmInfoResponseToJson(FilmInfoResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
