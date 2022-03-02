import 'package:number_display/number_display.dart';

class Value {
  Value();

  String format(double value) {
    final display = createDisplay(
      //This calc finds the length of the string after formatting to avoid errors
      length: (value.toStringAsFixed(2).length) +
          ((value.toStringAsFixed(2).length - 3) ~/ 3),
      decimal: 2,
      decimalPoint: ',',
      separator: '.',
    );
    return display(value);
  }
}