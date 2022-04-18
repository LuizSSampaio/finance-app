import 'package:fiancas/global_variables.dart';
import 'package:fiancas/pages/creation_page.dart';
import 'package:fiancas/pages/home_page.dart';
import 'package:fiancas/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finanças Pessoais',
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      darkTheme: themeDark,
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        CreationPage.routeName: (context) => const CreationPage(),
        SettingsPage.routeName: (context) => const SettingsPage(),
      },
    );
  }
}
