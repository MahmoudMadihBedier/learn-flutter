import 'package:flutter/material.dart';

class Calculatorbutton extends StatefulWidget {
  String data;
  Function onClik;
  Calculatorbutton(this.data,this.onClik);

  @override
  State<Calculatorbutton> createState() => _CalculatorbuttonState();
}

class _CalculatorbuttonState extends State<Calculatorbutton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(170, 0, 0, 0),
            overlayColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
              side: BorderSide(
                color: Color.fromARGB(255, 86, 86, 101),
                width: 4
              )
            )
          ),
          onPressed:(){
            widget.onClik(widget.data);
          },
          child: Text(
            widget.data,
            style: TextStyle(
              color: const Color.fromARGB(255, 116, 70, 2),
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
