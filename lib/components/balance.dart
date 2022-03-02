import 'package:fiancas/global_variables.dart';
import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key, required this.balanceValue}) : super(key: key);

  final double balanceValue;

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  bool isBalanceVisible = true;

  String balance(double balanceValue, bool isBalanceVisible) {
    return (isBalanceVisible)
        ? Value().format(balanceValue)
        : '*' * balanceValue.toString().length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Saldo',
          style: balanceStyle(fontSize: 18.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'R\$',
              style: balanceStyle(fontSize: 24.0),
            ),
            Text(
              balance(widget.balanceValue, isBalanceVisible),
              style: balanceStyle(fontSize: 34.0),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isBalanceVisible = (isBalanceVisible) ? false : true;
                });
              },
              child: Icon(
                (isBalanceVisible)
                    ? FontAwesomeIcons.eye
                    : FontAwesomeIcons.eyeSlash,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
