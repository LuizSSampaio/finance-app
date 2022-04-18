import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';

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
              format(revenue),
              style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.color
                      ?.withOpacity(0.65)),
            ),
          ],
        ),
      ),
    );
  }
}
