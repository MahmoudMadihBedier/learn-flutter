import 'package:flutter/material.dart';
import 'package:flutter_application_1/avanced_1/app_theme/colors.dart';
import 'package:flutter_application_1/avanced_1/widgets/logocenter.dart';
import 'package:flutter_application_1/avanced_1/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class Singupscreen extends StatelessWidget {
  const Singupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 150),
              LOGOWidget(),
              SizedBox(height: 10),
              Text(
                "Let’s Get Started!",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Create an account on MNZL to get all features",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: TextfielsApp("Frist Name", Icon(Icons.person_outline)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: TextfielsApp("last Name", Icon(Icons.person_outline)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: TextfielsApp("E-mail", Icon(Icons.email_outlined)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: TextfielsApp(
                  "password",
                  Icon(Icons.lock_clock_outlined),
                ),
              ),
                    Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                child: TextfielsApp(
                  "confim password",
                  Icon(Icons.lock_clock_outlined),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: GestureDetector(
                   
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(colors: [
                        ColorApp.scandryColor,
                        ColorApp.primairyColor 
                      ],
                      begin: AlignmentGeometry.bottomLeft,
                      end: AlignmentGeometry.topLeft
                      ),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade200
                        )
                      )
                    ),
                    child: Center(
                      child: Text(
                         "LOG IN",
                       style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                       ),
                      ),
                    ),
                    ),
                  ),
                ),
              SizedBox(height:50),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Loginscreen");
                },
                child: Text(
                  "have acoount using ",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
             
              
            ],
          ),
        ),
        Positioned(right: 10, child: Image.asset("assests/images/header2.png")),

        Positioned(child: Image.asset("assests/images/header.png")),
      ],
    );
  }
}
