import 'package:flutter/material.dart';

import 'package:friday_flutter_basics_c9/ui/screens/calculator/calculator_button.dart';

class Calculator extends StatefulWidget {
  static String routeName = "Calculator";

  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State {
  String resultText = "0";
  String lhs = "";
  String operator = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(resultText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 35),
                    textAlign: TextAlign.end),
              ),
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "7",
                  onClick: onDigitClick,
                ),
                CalculatorButton(digit: "8", onClick: onDigitClick),
                CalculatorButton(digit: "9", onClick: onDigitClick),
                CalculatorButton(digit: "/", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "4", onClick: onDigitClick),
                CalculatorButton(digit: "5", onClick: onDigitClick),
                CalculatorButton(digit: "6", onClick: onDigitClick),
                CalculatorButton(digit: "*", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: "1", onClick: onDigitClick),
                CalculatorButton(digit: "2", onClick: onDigitClick),
                CalculatorButton(digit: "3", onClick: onDigitClick),
                CalculatorButton(digit: "+", onClick: onOperatorClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(digit: ".", onClick: onDigitClick),
                CalculatorButton(digit: "0", onClick: onDigitClick),
                CalculatorButton(digit: "=", onClick: onEqualClick),
                CalculatorButton(digit: "-", onClick: onOperatorClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String digit) {
    if(digit == "." && resultText.contains(".")) return;
    if (resultText == "0") resultText = "";
    resultText += digit;
    setState(() {});
  }

  void onEqualClick(String equal){
    resultText = calculate(lhs, operator, resultText);
    operator ="";
    lhs = "";
    setState(() {});
  }

  void onOperatorClick(String clickedOperator) {
    if (operator.isEmpty) {
      lhs = resultText;
    } else {
      lhs = calculate(lhs, operator, resultText);
    }
    resultText = "";
    operator = clickedOperator;
    setState(() {});
    print("Operator: $operator, lhs : $lhs");
  }

  String calculate(String lhs, String operator, String rhs) {
    switch (operator) {
      case "+":
        {
          return "${double.parse(lhs) + double.parse(rhs)}";
        }
      case "-":
        {
          return "${double.parse(lhs) - double.parse(rhs)}";
        }
      case "*":
        {
          return "${double.parse(lhs) * double.parse(rhs)}";
        }
      default:
        {
          return "${double.parse(lhs) / double.parse(rhs)}";
        }
    }
  }
}
