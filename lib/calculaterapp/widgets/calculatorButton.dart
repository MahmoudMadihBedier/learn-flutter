import 'package:flutter/material.dart';

class Calculatorbutton extends StatelessWidget {
  String data;
  Calculatorbutton(this.data);

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
          onPressed: () {},
          child: Text(
            data,
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
