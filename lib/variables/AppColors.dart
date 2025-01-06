import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color backgroundColor = Color(0xFF09121C);
  static const Color liteBackgroundColor = Color(0xFF19232F);
  static const Color themeBtnColor = Color(0xFF3369FF);
  static const Color inputBorderColor = Colors.grey;
  static const Color darkBGColor = Color(0XFF060D15);

  static const Color greyText = Color(0XFF9E9E9E);
  static const Color whiteText = Color(0XFFFFFFFF);

  static const OutlineInputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: inputBorderColor),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(0),
    ),
  );

  static const BorderRadius imageBorder = BorderRadius.only(
      bottomLeft: Radius.circular(20),
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20));
}
