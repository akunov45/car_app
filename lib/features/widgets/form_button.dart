import 'package:flutter/material.dart';

Widget formButton(
    {required String text,
    required Color borderColor,
    Color? bgColor,
    TextStyle? textStyle}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 45),
    height: 52,
    width: double.infinity,
    decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
        color: bgColor),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: textStyle,
        ),
      ],
    ),
  );
}
