import 'package:flutter/material.dart';

class Titile extends StatelessWidget {
  const Titile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 4,
                          left: 2
                        ),
                        color: Colors.purpleAccent,
                        child: Text(
                          "Category",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:Colors.white
                          ),
                        ),
                      ),
                    ) ;
  }
}