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