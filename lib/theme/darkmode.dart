import 'package:flutter/material.dart';

ThemeData darkMode =ThemeData(
  brightness:Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade900,
    secondary: const Color.fromARGB(255, 198, 81, 9),
    inversePrimary: const Color.fromARGB(255, 220, 92, 7)
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: Colors.grey[300],
    displayColor: const Color.fromARGB(255, 97, 97, 97)
  ),

);