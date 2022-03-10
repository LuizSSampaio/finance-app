import 'package:fiancas/global_variables.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.route,
  }) : super(key: key);

  final String route;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        Navigator.pop(context);
      }
      else {
        Navigator.pushNamed(context, kNavigatorRoutes.elementAt(index));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: kNavigatorItems,
      currentIndex: kNavigatorRoutes.indexOf(widget.route),
      onTap: _onItemTapped,
    );
  }
}
