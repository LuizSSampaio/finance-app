import 'package:fiancas/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Settings Page'),
      ),
      bottomNavigationBar: BottomNavBar(
        route: routeName,
      ),
    );
  }
}
