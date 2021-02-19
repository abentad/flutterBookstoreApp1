import 'package:flutter/material.dart';

AnimatedContainer buildDot({int index, int currentPage}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 400),
    margin: EdgeInsets.only(right: 5.0),
    height: 6.0,
    width: currentPage == index ? 20.0 : 6.0,
    decoration: BoxDecoration(
      color: currentPage == index ? Colors.orange : Colors.grey,
      borderRadius: BorderRadius.circular(3.0),
    ),
  );
}
