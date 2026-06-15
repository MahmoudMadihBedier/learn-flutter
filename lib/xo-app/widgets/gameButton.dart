import 'package:flutter/material.dart';

class Gamebutton extends StatelessWidget {
  String symbole;
  Function onclik;
  Gamebutton(this.symbole,this.onclik);

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: 
            GestureDetector(
            
              onTap: (){
                  print("a7a");
                  onclik();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Color.fromARGB(164, 73, 23, 23),
                  border: Border.all(
                    color: const Color.fromARGB(113, 131, 34, 27),
                    width: 2
                  )
                ),
                child: Text(
                  symbole,
                   style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: const Color.fromARGB(209, 118, 25, 25)
                ),
                textAlign: TextAlign.center,
                
              ),
              ),
            ));
  }
}