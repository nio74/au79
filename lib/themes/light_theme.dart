import 'package:flutter/material.dart';

var lightThemeData = ThemeData(
  brightness: Brightness.light,
  // primaryColor: Color(0xff416ff4),
  scaffoldBackgroundColor: Color(0xFFF5F5F5),
  //accentColor: Color(0xFFe84545),
  colorScheme: const ColorScheme.light(primary: Color(0xff416ff4)),
  backgroundColor: Color(0xFFFFFFFF),
  fontFamily: 'Futura',
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline2: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headline3: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headline4: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline5: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline6: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    bodyText1: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.normal,
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      color: Color(0xFF2b2e4a),
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  ),
);
