import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Column splachContent({String title, subtitle, image}) {
  return Column(
    children: [
      Spacer(),
      SvgPicture.asset(
        image,
        height: 200.0,
        width: 220.0,
      ),
      // Spacer(),
      SizedBox(height: 10.0),
      Text(
        title,
        style: TextStyle(
            fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.teal),
      ),
      SizedBox(height: 10.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.teal[900],
              fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(height: 80.0),
    ],
  );
}
