import 'package:flutter/material.dart';
import 'package:flutter_application_1/avanced_1/app_theme/colors.dart';

class TextfielsApp extends StatelessWidget {
    String textData;
     Icon feildicon;
  TextfielsApp(this.textData,this.feildicon);
  final TextEditingController textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textControler,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF2F2F2),
        prefixIcon: feildicon,
        hint: Text(textData, style: TextStyle(fontSize: 18)),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorApp.primairyColor,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
