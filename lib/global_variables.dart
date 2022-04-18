import 'package:fiancas/pages/home_page.dart';
import 'package:fiancas/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const List<BottomNavigationBarItem> kNavigatorItems = [
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: ''),
  BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cog), label: ''),
];

const List<String> kNavigatorRoutes = [
  HomePage.routeName,
  SettingsPage.routeName,
];

ThemeData themeDark = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFFA20AEA),
    secondary: const Color(0xFFA20AEA),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.white,
    ),
    headline6: TextStyle(
      color: Colors.white,
    ),
  ),
);

ThemeData themeLight = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFFA20AEA),
    secondary: const Color(0xFFA20AEA),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Colors.black,
    ),
    headline6: TextStyle(
      color: Colors.black,
    ),
  ),
);
