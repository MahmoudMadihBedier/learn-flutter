import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String productName;
  final String price;
  final String imagePath;


  const ProductCard(
    this.productName,
    this.price,
    this.imagePath,
    {super.key}
  );


  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      elevation: 4,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),


      child: Padding(

        padding: const EdgeInsets.all(10),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [


            // Image + button
            Expanded(

              child: Stack(

                children: [

                  ClipRRect(

                    borderRadius: BorderRadius.circular(12),

                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                  ),



                  Positioned(

                    bottom: 8,
                    right: 8,

                    child: Container(

                      padding: const EdgeInsets.all(6),

                      decoration: BoxDecoration(

                        color: Colors.white,

                        shape: BoxShape.circle,

                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black26,
                          )
                        ]
                      ),


                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),

                    ),
                  )

                ],

              ),
            ),



            const SizedBox(height: 8),



            Text(

              productName,

              maxLines: 1,

              overflow: TextOverflow.ellipsis,

              style: const TextStyle(

                fontSize: 16,

                fontWeight: FontWeight.bold,

              ),
            ),



            const SizedBox(height: 5),



            const Text(

              "😊 4.8 (287)",

              style: TextStyle(
                color: Colors.grey,
              ),

            ),



            const SizedBox(height: 5),



            Text(

              price,

              style: const TextStyle(

                fontSize: 17,

                fontWeight: FontWeight.bold,

                color: Colors.green,

              ),

            ),


          ],
        ),
      ),
    );
  }
}