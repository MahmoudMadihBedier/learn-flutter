import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddrssBar extends StatelessWidget {
  const AddrssBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                Icon(Icons.delivery_dining),
                Text("  61 Hopper street..",
                style: GoogleFonts.balooDa2(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color:Colors.black,
                 ),
                ),
                Icon(Icons.keyboard_arrow_down_sharp),
                ],),
                Icon(Icons.shopping_bag_outlined)
              ],
            );
  }
}