import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

MaterialButton customMaterialButton(
    {Function press, IconData icon, Color iconColor, String label}) {
  return MaterialButton(
    onPressed: press,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
    height: 50.0,
    child: Row(
      children: [
        FaIcon(
          icon,
          color: iconColor,
          size: 30.0,
        ),
        SizedBox(width: 20.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
