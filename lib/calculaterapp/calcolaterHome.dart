import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculaterapp/logicCalculator/model.dart';
import 'package:flutter_application_1/calculaterapp/widgets/calculatorButton.dart';
import 'package:flutter_application_1/calculaterapp/widgets/resultWidget.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({super.key});

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  String firstNumber = "";
  String secondNumber = "";
  String operation = "";
  String result = "";
  void onpressedButton(String value) {
    setState(() {
      if (value == "+" ||
          value == "-" ||
          value == "*" ||
          value == "/" ||
          value == "%"
      ) {
        firstNumber= result;
        operation=value;
        result = "";
      }
      else if (value =="="){
        CalculaorProsess calculator =CalculaorProsess(
          firstNumber, result, operation);

          result =calculator.calculation().toString();
      }
      else if(value =="AC"){
        result="";
        firstNumber="";
        secondNumber="";
      }
      else{
         result +=value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Resultwidget(result),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("/", onpressedButton),
             
              Calculatorbutton("*", onpressedButton),
              Calculatorbutton("%", onpressedButton),
              Calculatorbutton("^", onpressedButton)
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("7", onpressedButton),
              Calculatorbutton("8", onpressedButton),
              Calculatorbutton("9", onpressedButton),
              Calculatorbutton("+", onpressedButton),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("4", onpressedButton),
              Calculatorbutton("5", onpressedButton),
              Calculatorbutton("6", onpressedButton),
              Calculatorbutton("-", onpressedButton),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("1", onpressedButton),
              Calculatorbutton("2", onpressedButton),
              Calculatorbutton("3", onpressedButton),
              Calculatorbutton("=", onpressedButton),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calculatorbutton("0", onpressedButton),
             
              Calculatorbutton("AC", onpressedButton),
            ],
          ),
        ),
      ],
    );
  }
}
