import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/items.dart';

class BodyScroll extends StatefulWidget {
  const BodyScroll({super.key});

  @override
  State<BodyScroll> createState() => _BodyScrollState();
}

class _BodyScrollState extends State<BodyScroll> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
               Row(
                      children: [
                        items(),
                         items(),
                      ],
                    ),
                      Row(
                      children: [
                        items(),
                         items(),
                      ],
                    ),
                      Row(
                      children: [
                        items(),
                         items(),
                      ],
                    ),
                      Row(
                      children: [
                        items(),
                         items(),
                      ],
                    ),
                      Row(
                      children: [
                        items(),
                         items(),
                      ],
                    ),
                    
                    
            ],
          ),

        ) 
        
    );
  }
}