import 'package:flutter/material.dart';
import 'package:flutter_application_1/category.dart';
import 'package:flutter_application_1/widgets/items.dart';

class ListScreen extends StatefulWidget {
  

  List<Category> categoryList=[];
  ListScreen(){
    createCategories();
  }
  
  
  void createCategories(){
    for(int i=0 ;i<1000 ;i ++){
      categoryList.add(Category("category","assests/image.png"));
    }

  }
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.categoryList.map(
        (element)=>items(element.title, element.image)
      ).toList(),
    );
  }
}
