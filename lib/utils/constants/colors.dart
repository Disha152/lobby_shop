import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  //App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);
  

  //Text Colors
  static const Color textPrimary = Color(0xFF6F6F6);
  static const Color textSecondary = Color(0xFF8e8e8e);
  static const Color textWhite = Color(0xFFffffff);

  //Background Colors
  static const Color light = Color(0xFFf5f5f5);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFffffff);

  //BackgroundContainerColors
  static const Color lightContainer = Color(0xFFffffff);
  static const Color darkContainer = Color(0xFF1e1e1e);

  //Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFF8e8e8e);

  //Border Colors
  static const Color borderPrimary = Color(0xFFe0e0e0);
  static const Color borderSecondary = Color(0xFF8e8e8e);

  //Gradient colors
  static const Gradient linearGradient = LinearGradient(
    colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4), ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,

  );



  //Error and Validation Colors
  static const Color error = Color(0xFFff4b4b);
  static const Color success = Color(0xFF4bffa4);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF4b68ff);

  //Neutral Shades
  static const Color transparent = Color.fromARGB(4, 245, 245, 245);
  static const Color grey = Color.fromARGB(255, 66, 66, 66);
  static const Color lightgrey = Color(0xFFb0b0b0);
  static const Color darkgrey = Color(0xFF8e8e8e);
  

  

}
