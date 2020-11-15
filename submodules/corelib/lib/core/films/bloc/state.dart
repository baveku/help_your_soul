import 'package:corelib/core/films/model/film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmState {
  List<Film> films;
  int counter;

  FilmState(this.films) : counter = 0;
}
