import 'package:flutter/material.dart';

class CastumAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CastumAppBar({super.key});
  
@override
Size get preferrdSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8)
      child: AppBar(
        
      ),
       );
  }
}