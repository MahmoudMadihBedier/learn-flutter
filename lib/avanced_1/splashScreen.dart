import 'package:flutter/material.dart';
import 'package:flutter_application_1/avanced_1/widgets/logocenter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_theme/colors.dart';

class Splashscreen extends StatefulWidget {
  static String routeName ="SplashScreen";
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

@override
  void initState() {
    Future.delayed(Duration(seconds: 2)
    ,
    ()=>Navigator.pushNamed(context, "Loginscreen")
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 200),
              LOGOWidget(),
              SizedBox(height: 80),
              Center(child: Image.asset("assests/images/mainLOGO.png")),
              Text(
                "LOREM IPSM",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              
              ),
              SizedBox(height: 10,),
              Text(
                "Lorem Ipsum is a dummy text\n     used as placeholder",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),)
              
            
            ],
          ),
        ),
        Positioned(
          top: 50,
          bottom: 500,
          left: 0, // Explicit sizing prevents vector distortion
          right: 150,
          child: SvgPicture.asset("assests/images/line.svg"),
        ),
        Positioned(
          top: 300,
          bottom: 500,
          left: 0, // Explicit sizing prevents vector distortion
          right: 150,
          child: SvgPicture.asset("assests/images/light.svg"),
        ),
        Positioned(
          top: 50,
          bottom: 400,
          left: 0, // Explicit sizing prevents vector distortion
          right: 250,
          child: SvgPicture.asset("assests/images/line.svg"),
        ),
        Positioned(
          top: 300,
          bottom: 300,
          left: 0, // Explicit sizing prevents vector distortion
          right: 250,
          child: SvgPicture.asset("assests/images/light.svg"),
        ),
      ],
    );
  }
}
