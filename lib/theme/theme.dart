import 'package:flutter/material.dart';

final ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black54,
    background: Colors.white,
    brightness: Brightness.light,
  ),
);

final ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.white12,
    background: Colors.black26,
    primary: Colors.white,
    brightness: Brightness.dark,
  ),
);