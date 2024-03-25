import 'package:flutter/material.dart';

class CustomChipTheme {
  CustomChipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    backgroundColor: Colors.white,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue,
    padding: EdgeInsets.all(8),
    shape: StadiumBorder(),
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    brightness: Brightness.light,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    backgroundColor: Colors.black,
    disabledColor: Colors.grey,
    selectedColor: Colors.blue,
    secondarySelectedColor: Colors.blue,
    padding: EdgeInsets.all(8),
    shape: StadiumBorder(),
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    brightness: Brightness.dark,
  );
}
