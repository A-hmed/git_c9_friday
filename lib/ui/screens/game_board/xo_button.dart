import 'package:flutter/material.dart';

class XOButton extends StatelessWidget {
  String symbol;
  Function onClick;
  int index;
  XOButton({required this.symbol, required this.onClick,required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.all(4),
          child: ElevatedButton(
              onPressed: () {
                onClick(index);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                symbol,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )),
        ));
  }
}
