import 'package:flutter/material.dart';

class BaseTheme {
  static ThemeData getBaseTheme() {
    return ThemeData(
      fontFamily: 'Outfit',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff000813),
    );
  }
}
