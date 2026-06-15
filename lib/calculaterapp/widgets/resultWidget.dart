import 'package:flutter/material.dart';

class Resultwidget extends StatelessWidget {
  String resultdigit;
  Resultwidget(this.resultdigit);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Row(
            children: [
              Text(
                resultdigit,
                style: TextStyle(
                  color: const Color.fromARGB(255, 116, 70, 2),
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
            ],
          ),
        );
  }
}