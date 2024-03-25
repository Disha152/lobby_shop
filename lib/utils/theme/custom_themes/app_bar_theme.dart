import 'package:flutter/material.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
     iconTheme: IconThemeData(
      color: Colors.black,
      size:24,
    ),
    actionsIconTheme: IconThemeData(color: Colors.black,size:24),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );

   static const darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
     iconTheme: IconThemeData(
      color: Colors.white,
      size:24,
    ),
    actionsIconTheme: IconThemeData(color: Colors.white,size:24),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  );
}
