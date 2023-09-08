import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String digit;
  Function onClick;

  CalculatorButton({required this.digit, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
          onPressed: () {
            onClick(digit);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          child: Text(
            digit,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
    ));
  }
}
