import 'package:flutter/material.dart';

class Playerwidget extends StatelessWidget {
  int score;
  String playerName;
  Playerwidget(this.score,this.playerName);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: 
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  
                    children: [
                      Text(
                        playerName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: const Color.fromARGB(209, 116, 47, 47)
                        ),
                        ),
                      Text(
                        "$score",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color:  const Color.fromARGB(209, 116, 47, 47)
                        ),
                        ),
                    ],
                  )
                )
                );
  }
}