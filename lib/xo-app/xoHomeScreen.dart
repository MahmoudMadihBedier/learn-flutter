import 'package:flutter/material.dart';
import 'package:flutter_application_1/xo-app/algorazim/listcase.dart';
import 'package:flutter_application_1/xo-app/widgets/gameButton.dart';
import 'package:flutter_application_1/xo-app/widgets/playerwidget.dart';

class PlayScreen extends StatefulWidget {
  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int scorePlayerX = 0;
  int scorePlayerO = 0;
  String currentPlayer = "X";
  bool gameOver = false;
  int playedTurns = 0;

  List<String> board = ["", "", "", "", "", "", "", "", ""];

  String checkWinner() {
    for (var combination in winnerCases) {
      int a = combination[0];
      int b = combination[1];
      int c = combination[2];
      if (board[a] != "" && board[a] == board[b] && board[a] == board[c]) {
        return board[a];
      }
    }
    return "";
  }

  void resetBoard() {
    setState(() {
      board = List.filled(9, "");
      currentPlayer = "X";
      gameOver = false;
      playedTurns = 0;
    });
  }

  void showRoundResult(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              resetBoard();
            },
            child: const Text("Play again"),
          ),
        ],
      ),
    );
  }

  void onclick(int index) {
    if (gameOver || board[index] != "") {
      return;
    }

    String? resultMessage;

    setState(() {
      board[index] = currentPlayer;
      playedTurns++;

      String winner = checkWinner();
      if (winner == "X") {
        scorePlayerX += 50;
        gameOver = true;
        resultMessage = "Player X wins";
      } else if (winner == "O") {
        scorePlayerO += 50;
        gameOver = true;
        resultMessage = "Player O wins";
      } else if (playedTurns == board.length) {
        gameOver = true;
        resultMessage = "Draw";
      } else {
        currentPlayer = currentPlayer == "X" ? "O" : "X";
      }
    });

    if (resultMessage != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          showRoundResult(resultMessage!);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Playerwidget(scorePlayerX, "player X"),
              Playerwidget(scorePlayerO, "player O"),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Gamebutton(board[0], () => onclick(0)),
              Gamebutton(board[1], () => onclick(1)),
              Gamebutton(board[2], () => onclick(2)),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Gamebutton(board[3], () => onclick(3)),
              Gamebutton(board[4], () => onclick(4)),
              Gamebutton(board[5], () => onclick(5)),
            ],
          ),
        ),

        Expanded(
          child: Row(
            children: [
              Gamebutton(board[6], () => onclick(6)),
              Gamebutton(board[7], () => onclick(7)),
              Gamebutton(board[8], () => onclick(8)),
            ],
          ),
        ),
      ],
    );
  }
}
