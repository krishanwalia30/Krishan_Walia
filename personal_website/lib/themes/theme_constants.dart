import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  // For making the text buttons black
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black))),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
// For making the text buttons white
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white))),

  primaryColor: Colors.white,
  scaffoldBackgroundColor: Color.fromARGB(255, 9, 13, 31),
);
