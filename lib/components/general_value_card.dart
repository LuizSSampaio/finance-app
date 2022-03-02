import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GeneralValueCard extends StatelessWidget {
  const GeneralValueCard({
    Key? key,
    required this.revenue,
    required this.title,
    required this.icon,
    required this.iconBackground,
  }) : super(key: key);

  final double revenue;
  final String title;
  final IconData icon;
  final Color iconBackground;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            icon,
            color: Colors.white,
          ),
          backgroundColor: iconBackground,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text(
              Value().format(revenue),
              style: const TextStyle(color: Color(0xFF3A3B3C)),
            ),
          ],
        ),
      ),
    );
  }
}
