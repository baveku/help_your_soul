import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/film.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_films.g.dart';

@JsonSerializable()
class GetFilmResponse extends Response<List<Film>> {}
