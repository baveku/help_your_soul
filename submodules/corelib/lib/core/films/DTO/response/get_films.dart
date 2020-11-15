import 'package:corelib/core/films/model/film.dart';
import 'package:corelib/type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_films.g.dart';

@JsonSerializable()
class GetFilmsResponse extends HYResponse<List<Film>> {
  GetFilmsResponse(int code, String message, List<Film> data) : super(code, message, data);

  factory GetFilmsResponse.fromJson(Map<String, dynamic> json) => _$GetFilmsResponseFromJson(json);
}
