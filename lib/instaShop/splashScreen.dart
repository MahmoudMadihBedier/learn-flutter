import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, "ShopScreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            BounceAnimatedText(
              "Grabber",
              textStyle: GoogleFonts.balooDa2(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xff0CA201),
              ),
            ),
            BounceAnimatedText(
              "have nice shop",
              textStyle: GoogleFonts.balooDa2(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xff0CA201),
              ),
            ),
            BounceAnimatedText(
              "with .. Grabber",
              textStyle: GoogleFonts.balooDa2(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xff0CA201),
              ),
            ),
          ],
          totalRepeatCount: 4,
          pause: const Duration(milliseconds: 100),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),
    );
  }
}
