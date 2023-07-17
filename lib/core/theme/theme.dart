import 'package:flutter/material.dart';

class BaseTheme {
  static ThemeData getBaseTheme() {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        fontFamily: 'nunito',
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xff075E54)));
  }
}


// ThemeData(
//           brightness: Brightness.dark,
//           scaffoldBackgroundColor: GlobalVariables.backgroundColor,
//           bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//               backgroundColor: GlobalVariables.bottomNavbarBackground),
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//           )),