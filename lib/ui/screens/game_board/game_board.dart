import 'package:flutter/material.dart';
import 'package:friday_flutter_basics_c9/ui/screens/game_board/xo_button.dart';

class GameBoard extends StatefulWidget {
  static String routeName = "GameBoard";
   GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
   List<String> board = [
     "", "", "",
     "", "", "",
     "", "", ""
   ];

   int counter = 0;
   int player1Score= 0;
   int player2Score= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Player1: ${player1Score}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                  Text("Player2: ${player2Score}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                ],
              )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(
                  symbol: board[0],
                  onClick: onButtonClick,
                  index: 0,
                ),
                XOButton(symbol: board[1], onClick: onButtonClick,index: 1,),
                XOButton(symbol: board[2], onClick: onButtonClick,index: 2,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(symbol: board[3], onClick: onButtonClick,index: 3,),
                XOButton(symbol: board[4], onClick: onButtonClick,index: 4,),
                XOButton(symbol: board[5], onClick: onButtonClick,index: 5,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XOButton(symbol: board[6], onClick: onButtonClick,index: 6,),
                XOButton(symbol: board[7], onClick: onButtonClick,index: 7,),
                XOButton(symbol: board[8], onClick: onButtonClick,index: 8,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onButtonClick(int index){
    if(board[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "o" : "x";
    board[index] = symbol;
    counter++;

    if(checkWinner(symbol)){
      if(symbol == "x"){
        player2Score++;
      }else {
        player1Score++;
      }
      resetBoard();
    }

    if(counter == 9){
      resetBoard();
    }
    setState(() {});
  }

  void resetBoard(){
    board = [
      "", "", "",
      "", "", "",
      "", "", ""
    ];
    counter = 0;
    setState(() {});
  }
  bool checkWinner(String symbol){
    if(board[0] == symbol && board[1] == symbol && board[2] == symbol){
      return true;
    }
    if(board[3] == symbol && board[4] == symbol && board[5] == symbol){
      return true;
    }if(board[6] == symbol && board[7] == symbol && board[8] == symbol){
      return true;
    }
    ////////////////
    if(board[0] == symbol && board[3] == symbol && board[6] == symbol){
      return true;
    }
    if(board[1] == symbol && board[4] == symbol && board[7] == symbol){
      return true;
    }if(board[2] == symbol && board[5] == symbol && board[8] == symbol){
      return true;
    }
    ///////////
    if(board[0] == symbol && board[4] == symbol && board[8] == symbol){
      return true;
    }if(board[2] == symbol && board[4] == symbol && board[6] == symbol){
      return true;
    }
    return false;
  }
}
