import 'package:flutter/material.dart';

class CustomCheckboxTheme {
  CustomCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.resolveWith((states)  {
      if(states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.grey;
      }

    }),
    fillColor: MaterialStateProperty.resolveWith( (states) {
      if(states.contains(MaterialState.disabled)) {
        return Colors.grey;
      } else {
        return Colors.blue;
      }
    }
  ),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.resolveWith((states)  {
      if(states.contains(MaterialState.selected)) {
        return Colors.black;
      } else {
        return Colors.white;
      }

    }),
    fillColor: MaterialStateProperty.resolveWith( (states) {
      if(states.contains(MaterialState.disabled)) {
        return Colors.grey;
      } else {
        return Colors.blue;
      }
    }
  ),
  );
}