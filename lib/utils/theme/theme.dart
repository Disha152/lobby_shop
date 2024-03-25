import 'package:flutter/material.dart';
import 'package:lobby_shop/utils/theme/custom_themes/text_field.dart';

import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CustomTextTheme.lightTextTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme:
        CustomAppBarTheme.lightAppBarTheme, // primarySwatch: Colors.blue,
    chipTheme: CustomChipTheme.lightChipTheme,
    primaryTextTheme: CustomTextTheme.lightTextTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightTextFieldTheme,
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: CustomTextTheme.darkTextTheme,
    useMaterial3: true,
    primaryColor: Colors.blue,
    backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    primaryTextTheme: CustomTextTheme.darkTextTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    inputDecorationTheme: CustomTextFieldTheme.darkTextFieldTheme,
    //primaryColorBrightness: Brightness

    // primarySwatch: Colors.blue,
  );
}
