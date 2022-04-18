import 'package:fiancas/logic/value_formater.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key, required this.balanceValue}) : super(key: key);

  final double balanceValue;

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  TextStyle balanceStyle({required double fontSize}) {
    return TextStyle(
      color: Theme.of(context).textTheme.bodyText1?.color,
      fontSize: fontSize,
      fontWeight: FontWeight.w900,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Saldo',
          style: balanceStyle(fontSize: 18.0),
        ),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisSize: MainAxisSize.min,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 4.0),
                child: Text(
                  'R\$',
                  style: balanceStyle(fontSize: 14.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  format(widget.balanceValue),
                  style: balanceStyle(fontSize: 24.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
