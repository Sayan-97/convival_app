
import 'package:convivalapp/splash.dart';
import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: Colors.deepPurple,
        //   background: backgroundColor,
        // ),
        // textTheme: const TextTheme(
        //   headlineMedium: TextStyle(
        //     color: primaryTextColor
        //   )
        // ),
        // useMaterial3: true,
        scaffoldBackgroundColor: backgroundColor
      ),
      routes: {
        "/":(context) => const Splash()
      },
      // home: const Splash(),
    );
  }
}
