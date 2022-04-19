import 'package:fiancas/views/home_page.dart';
import 'package:fiancas/views/settings_page.dart';
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