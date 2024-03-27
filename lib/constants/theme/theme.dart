import 'package:e_commerce/constants/colors/ColorConstants.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  // Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: MyColors.grey,
    brightness: Brightness.dark,
    primaryColor: MyColors.primary,
    scaffoldBackgroundColor: Colors.white,
  );
}
