import 'package:fiancas/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finanças Pessoais',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFA20AEA),
        ),
        // appBarTheme: AppBarTheme(
        //   backgroundColor: Colors.deepPurple.shade500,
        // ),
      ),
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
