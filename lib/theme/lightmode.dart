import 'package:flutter/material.dart';

ThemeData lightMode =ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.white,
    secondary: const Color.fromARGB(255, 248, 114, 30),
    inversePrimary: const Color.fromARGB(255, 216, 95, 14)
  ),
  textTheme: ThemeData.light().textTheme.apply(
    bodyColor: Colors.black,
    displayColor: Colors.black54
  ),
);