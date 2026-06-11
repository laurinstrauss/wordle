import 'package:flutter/material.dart';

class ButtonThemes {
  static OutlinedButtonThemeData
  outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Color.fromRGBO(255, 255, 255, 1);
        }
        return Color.fromRGBO(0, 0, 255, 1);
      }),
      foregroundColor: WidgetStateColor.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Color.fromRGBO(134, 134, 134, 1);
        }
        return Color.fromRGBO(255, 255, 255, 1);
      }),
      side: WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: Color.fromRGBO(134, 134, 134, 1));
        }
        return BorderSide(color: Color.fromRGBO(0, 0, 255, 1));
      }),
    ),
  );
}
