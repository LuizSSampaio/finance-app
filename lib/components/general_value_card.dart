import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';

class GeneralValueCard extends StatelessWidget {
  const GeneralValueCard({
    Key? key,
    required this.value,
    required this.title,
    required this.icon,
    required this.iconBackgroundColor,
    this.iconColor,
  }) : super(key: key);

  final double value;
  final String title;
  final IconData icon;
  final Color? iconColor;
  final Color iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            icon,
            color: (iconColor != null) ? iconColor : Colors.white,
          ),
          backgroundColor: iconBackgroundColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text(
              format(value),
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
