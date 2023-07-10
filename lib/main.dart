import 'package:convivalapp/global_variables.dart';
import 'package:convivalapp/screens/home.dart';
import 'package:convivalapp/screens/screen1.dart';
import 'package:convivalapp/screens/screen2.dart';
import 'package:convivalapp/screens/screen3.dart';
import 'package:convivalapp/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const Splash(),
    );
  }
}
