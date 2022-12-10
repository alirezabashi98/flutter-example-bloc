import 'package:flutter/material.dart';

abstract class HomeState {}

class ColorInit extends HomeState {
  late final Color color;
  ColorInit(this.color);
}

class ColorRePaint extends HomeState {
  late final Color color;
  ColorRePaint(this.color);
}
