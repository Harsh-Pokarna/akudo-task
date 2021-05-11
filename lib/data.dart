import 'package:flutter/material.dart';

Color primaryColor = const MaterialColor(
  0xFFCADCED,
  const <int, Color>{
    50: const Color(0xFFCADCED),
    100: const Color(0xFFCADCED),
    200: const Color(0xFFCADCED),
    300: const Color(0xFFCADCED),
    400: const Color(0xFFCADCED),
    500: const Color(0xFFCADCED),
    600: const Color(0xFFCADCED),
    700: const Color(0xFFCADCED),
    800: const Color(0xFFCADCED),
    900: const Color(0xFFCADCED),
  },
);
List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(1),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900].withOpacity(0.2),
    spreadRadius: 2,
    offset: Offset(7, 7),
    blurRadius: 20,
  )
];
