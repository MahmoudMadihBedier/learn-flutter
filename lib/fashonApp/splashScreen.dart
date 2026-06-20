import 'package:flutter/material.dart';
import 'package:flutter_application_1/fashonApp/animation/animation.dart';
import 'package:flutter_application_1/fashonApp/home.dart';
import 'package:flutter_svg/svg.dart';

class fasionSplashScreen extends StatefulWidget {
  static String routename="fasionSplashScreen";
  const fasionSplashScreen({super.key});

  @override
  State<fasionSplashScreen> createState() => _fasionSplashScreenState();
}

class _fasionSplashScreenState extends State<fasionSplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1),
    (){
      Navigator.pushReplacementNamed(context, FashionHome.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assests/svgImage/Runway.svg"),
            RightToLeftImageAnimation(),
          ],
        ),
      ),
    );
  }
}