import 'package:flutter/material.dart';

Widget iconsBar(BuildContext context, IconData icon, String redirect) {
  return GestureDetector(
    child:Icon(
      icon,
      color: Color(0xFFA2A2A2),
      size: 20,
    ),
    onTap: () => Navigator.pushNamed(context, redirect),
  );
}


