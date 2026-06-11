import 'package:flutter/material.dart';

class TextInputThemes {
  static InputDecorationThemeData outlinedInputFieldTheme =
      InputDecorationThemeData(
        border: OutlineInputBorder(
          borderSide: WidgetStateBorderSide.resolveWith((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(color: Color.fromRGBO(134, 134, 134, 1));
            }
            return BorderSide(color: Color.fromRGBO(0, 0, 255, 1));
          }),
        ),
      );
}
