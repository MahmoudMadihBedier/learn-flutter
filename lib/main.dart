import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI-fristScreen/home.dart';
import 'package:flutter_application_1/avanced_1/loginScreen.dart';
import 'package:flutter_application_1/avanced_1/singupscreen.dart';
import 'package:flutter_application_1/avanced_1/splashScreen.dart';
import 'package:flutter_application_1/fashonApp/home.dart';
import 'package:flutter_application_1/fashonApp/splashScreen.dart';
import 'package:flutter_application_1/instaShop/homeScreen.dart';
import 'package:flutter_application_1/instaShop/splashScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'prime',
        primarySwatch: Colors.blue,
      ),
      
      routes: {
      
        fasionSplashScreen.routename :(context) => const fasionSplashScreen(),
        FashionHome.routeName:(context) =>  FashionHome()
      },
      initialRoute: fasionSplashScreen.routename,
    );
  }
}
  