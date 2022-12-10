import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example_bloc/bloc/home_event.dart';
import 'package:flutter_example_bloc/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ColorInit(Color.fromARGB(255, 243, 33, 114))) {
    on<ChangeColorEvent>(
      (event, emit) {
        emit(
          ColorRePaint(
            Color(
              Random().nextInt(0xffffffff),
            ),
          ),
        );
      },
    );
  }
}
