import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculaterapp/widgets/calculatorButton.dart';
import 'package:flutter_application_1/calculaterapp/widgets/resultWidget.dart';

class CalculatorHome extends StatelessWidget {
  const CalculatorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        Resultwidget(677777),
         Expanded(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("7"),
              Calculatorbutton("8"),
              Calculatorbutton("9"),
              Calculatorbutton("+"),
            ],
            
                   ),
         ),
         Expanded(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("4"),
              Calculatorbutton("5"),
              Calculatorbutton("6"),
              Calculatorbutton("-"),
            ],
            
                   ),
         ),
         Expanded(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("1"),
              Calculatorbutton("2"),
              Calculatorbutton("3"),
              Calculatorbutton("="),
            ],
            
                   ),
                   
         ),
           Expanded(
           child: Row(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("0"),
              Calculatorbutton("="),
              Calculatorbutton("AC"),
              
            ],
            
                   ),)
      ],
    );
  }
}