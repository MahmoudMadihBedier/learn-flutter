import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculaterapp/calcolaterHome.dart';
import 'package:flutter_application_1/widgets/bodyscrol.dart';
import 'package:flutter_application_1/widgets/items.dart';
import 'package:flutter_application_1/widgets/listHomeScreen.dart';
import 'package:flutter_application_1/widgets/titile.dart';
import 'category.dart';
import '/widgets/trymaping.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text(
                "calculator"
              ),
              backgroundColor:const Color.fromARGB(255, 195, 194, 194),
            ),
            body: CalculatorHome()
    );
  }
  }
  