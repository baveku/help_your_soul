// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Film _$FilmFromJson(Map<String, dynamic> json) {
  return Film(
    json['id'] as String,
    json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    json['name'] as String,
  );
}

Map<String, dynamic> _$FilmToJson(Film instance) => <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
