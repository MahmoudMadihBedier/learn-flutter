import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/instaShop/lists/CategoryList.dart';
import 'package:flutter_application_1/instaShop/lists/cardlist.dart';
import 'package:flutter_application_1/instaShop/widgets/appBar.dart';
import 'package:flutter_application_1/instaShop/widgets/headerCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  static String routeName = "ShopScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                AddrssBar(),

                const SizedBox(height: 20),

                // Horizontal offers
                CarouselSlider(
                  items: CardList,
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(height: 30,)
                ,Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: CategoryList,

                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fruits",
                      style: GoogleFonts.balooDa2(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black                      )
                    ,
                    ),
                    Text(
                      "see all",
                      style: GoogleFonts.balooDa2(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color:Color(0xff0CA201)
                      ),
                    ),
                  ],
                )
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
