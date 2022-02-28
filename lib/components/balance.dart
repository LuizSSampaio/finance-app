import 'package:fiancas/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key, required this.balanceValue}) : super(key: key);

  final double balanceValue;

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  bool isBalanceVisible = true;

  String balanceFormat(double balanceValue) {
    final display = createDisplay(
      length: (balanceValue.toStringAsFixed(2).length) +
          ((balanceValue.toStringAsFixed(2).length - 3) ~/ 3),
      decimal: 2,
      decimalPoint: ',',
      separator: '.',
    );
    return display(balanceValue);
  }

  String balance(double balanceValue, bool isBalanceVisible) {
    return (isBalanceVisible)
        ? balanceFormat(balanceValue)
        : '*' * balanceValue.toString().length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Saldo Disponível',
          style: balanceStyle(18.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'R\$',
              style: balanceStyle(24.0),
            ),
            Text(
              balance(widget.balanceValue, isBalanceVisible),
              style: balanceStyle(34.0),
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
