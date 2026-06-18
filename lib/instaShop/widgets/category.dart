import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String titel;
  String imagePath;
  CategoryWidget(this.titel,this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                            child: Image.asset(imagePath),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            "$titel",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal
                            ),
                          )


                        ],
                      ),
                    );
  }
}