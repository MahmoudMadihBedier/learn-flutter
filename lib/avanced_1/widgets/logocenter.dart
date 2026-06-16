import 'package:flutter/material.dart';
import 'package:flutter_application_1/avanced_1/app_theme/colors.dart';

class LOGOWidget extends StatelessWidget {
  const LOGOWidget
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: <Color>[
                        ColorApp.primairyColor,
                        ColorApp.scandryColor,
                      ],
                      begin: AlignmentGeometry.topRight,
                      end: AlignmentGeometry.bottomLeft,
                    ).createShader(bounds);
                  },
                  child: Text(
                    "LOGO",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'prime',
                      fontSize: 80,
                    ),
                  ),
                ),
              );
  }
}