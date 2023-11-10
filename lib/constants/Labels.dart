import 'package:flutter/material.dart';
import 'package:foodie/constants/Colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

Widget heading({String? text, Color? color, double? fontSize}) {
  return Text(
    text!,
    style: TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.w800, color: color),
  );
}

Widget gradientText({String? text, Color? color, double? fontSize}) {
  return GradientText(
    text!,
    style: TextStyle(
      fontSize: fontSize,
    ),
    colors: const [
      blueColor,
      greenColor,
      yellowColor,
      redColor,
    ],
  );
}
