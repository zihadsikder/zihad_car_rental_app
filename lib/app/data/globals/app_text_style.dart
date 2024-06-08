import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle headerTextStyle(
      {Color color = Colors.black, double fontSize = 16}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
      letterSpacing: 1.7,
      height: 1.5,
    );
  }
  static TextStyle hintTextStyle(
      {Color color = Colors.grey, double fontSize = 14}) {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      letterSpacing: 1.7,

    );
  }
}