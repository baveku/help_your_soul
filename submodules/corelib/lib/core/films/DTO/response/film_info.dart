import 'package:corelib/core/films/model/film.dart';
import 'package:corelib/type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'film_info.g.dart';

@JsonSerializable()
class FilmInfoResponse extends HYResponse<Film> {
  FilmInfoResponse(int code, String message, Film data) : super(code, message, data);

  factory FilmInfoResponse.fromJson(Map<String, dynamic> json) => _$FilmInfoResponseFromJson(json);
}
