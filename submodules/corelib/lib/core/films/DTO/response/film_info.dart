import 'package:corelib/core/films/model/film.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:corelib/base/response.dart';

part 'film_info.g.dart';

@JsonSerializable()
class FilmInfoResponse extends APIResponse<Film> {
  FilmInfoResponse(int code, String message, Film data) : super(code, message, data);

  factory FilmInfoResponse.fromJson(Map<String, dynamic> json) => _$FilmInfoResponseFromJson(json);
}
