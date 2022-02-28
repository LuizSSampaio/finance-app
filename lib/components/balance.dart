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
    // String balance = balanceValue.toStringAsFixed(2);
    // return balance.substring(0, balance.length - 3) +
    //     ',' +
    //     balance.substring(balance.length - 2);
    // balance.replaceFirst('.', ',');
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
        const Text(
          'Saldo Disponível',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            const Text(
              'R\$',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              balance(widget.balanceValue, isBalanceVisible),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.w900,
              ),
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
