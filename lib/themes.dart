import 'package:flutter/material.dart';

final ColorScheme colorScheme = ColorScheme.fromSwatch().copyWith(
  primary: const Color(0xFFA20AEA),
  secondary: const Color(0xFFA20AEA),
);

final ThemeData themeDark = ThemeData.dark().copyWith(
  colorScheme: colorScheme,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
    headline6: TextStyle(
      color: Colors.white,
    ),
  ),
);

final ThemeData themeLight = ThemeData.light().copyWith(
  colorScheme: colorScheme,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
    ),
    headline6: TextStyle(
      color: Colors.black,
    ),
  ),
);
