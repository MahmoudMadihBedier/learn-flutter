import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bodyscrol.dart';
import 'package:flutter_application_1/widgets/items.dart';
import 'package:flutter_application_1/widgets/titile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text(
                "hello"
              ),
              backgroundColor:const Color.fromARGB(255, 195, 194, 194),
            ),
            body: Column(
              children: [
                Row(
                  children: [
                  Titile(),
                  Titile()
                  ],
                ),
                BodyScroll(),
              ])
    );
  }
  }