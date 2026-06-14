import 'package:flutter/material.dart';

class items extends StatelessWidget {
  const items({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                      child: Stack(
                       alignment: AlignmentGeometry.bottomEnd,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              right: 4,
                          left: 2
                            ),
                            child: Image.asset("assests/image.png"),
                          ),
                          Text(
                            "cars",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              backgroundColor: Color.fromRGBO(186, 9, 222, 0.483)
                            ),
                            
                          )
                        ],
                      ),
                    );
  }
}