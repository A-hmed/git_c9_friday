import 'package:flutter/material.dart';
import 'package:friday_flutter_basics_c9/model/home_item_dm.dart';
import 'package:friday_flutter_basics_c9/ui/screens/calculator/calculator.dart';
import 'package:friday_flutter_basics_c9/ui/screens/game_board/game_board.dart';
import 'package:friday_flutter_basics_c9/ui/screens/home/home.dart';
import 'package:friday_flutter_basics_c9/ui/screens/login/login.dart';
import 'package:friday_flutter_basics_c9/ui/screens/register/register.dart';
/// Column, Row , Stack

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Register.routeName: (_) => Register(),
        Login.routeName: (context){
          return Login();
        },
        Home.routeName: (_) => Home(),
        Calculator.routeName: (_) => Calculator(),
        GameBoard.routeName: (_)=> GameBoard()
      },
      initialRoute: GameBoard.routeName,
    );
  }
}
