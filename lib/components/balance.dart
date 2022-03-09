import 'package:fiancas/global_variables.dart';
import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key, required this.balanceValue}) : super(key: key);

  final double balanceValue;

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Saldo',
          style: balanceStyle(fontSize: 18.0),
        ),
        SizedBox(
          width: 140,
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'R\$',
                  style: balanceStyle(fontSize: 14.0),
                ),
                Text(
                  format(widget.balanceValue),
                  style: balanceStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
