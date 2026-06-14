import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/category.dart';
import 'package:flutter_application_1/widgets/items.dart';

class ListHomeScreen extends StatefulWidget {
  

  List<Category> categoryList=[];
  ListHomeScreen(){
    createCategories();
  }
  
  
  void createCategories(){
    for(int i=0 ;i<1000 ;i ++){
      categoryList.add(Category("category","assests/image.png"));
    }

  }
  @override
  State<ListHomeScreen> createState() => _ListHomeScreenState();
}

class _ListHomeScreenState extends State<ListHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.categoryList.length,
      itemBuilder: (context,index){
        buildeCategory(widget.categoryList, index);
      }
    );
  }
}

Widget buildeCategory(List<Category> context ,int index){
return items(
  context[index].title
  ,
  context[index].image
);
}