import 'package:convivalapp/core/dI/service_locator.dart';
import 'package:convivalapp/landing.dart';
import 'package:flutter/material.dart';

class ConvivalMaterialApp extends StatefulWidget {
  const ConvivalMaterialApp({super.key});

  @override
  State<ConvivalMaterialApp> createState() => _ConvivalMaterialAppState();
}

class _ConvivalMaterialAppState extends State<ConvivalMaterialApp> {
  bool firebaseInitialized = true;

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  Future<void> initializeFlutterFire() async {
    try {
      // await Firebase.initializeApp();

      serviceLoactor();

      // setState(() {
      //   _firebaseInitialized = true;
      // });
    } catch (e) {
      setState(() {
        // errorString = e.toString();
        //  _error = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!firebaseInitialized) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: SizedBox(),
        ),
      );
    } else {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingScreen(),
      );
    }
  }
}
