import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Container(
        height: 220,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffD7FFD4),
          borderRadius: BorderRadius.circular(18),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text Section
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "Up to 30% offer",
                    style: GoogleFonts.balooDa2(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    "Enjoy our big offer",
                    style: GoogleFonts.balooDa2(
                      fontSize: 17,
                      color: Color(0xff0CA201),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},

                    child: Container(
                      height: 40,
                      width: 110,

                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: Color(0xff0CA201),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Text(
                        "Shop Now",
                        style: GoogleFonts.balooDa2(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Image Section
            Expanded(
              child: Image.asset(
                "assests/images/imageCard.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
