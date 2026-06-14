import 'package:flutter/material.dart';

class items extends StatelessWidget {
  
  String title;
  String image;
  items(this.title,this.image);

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
                            child: Image.asset(image),
                          ),
                          Text(
                            title,
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