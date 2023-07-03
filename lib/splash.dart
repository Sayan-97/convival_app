// import 'package:convivalapp/home.dart';
import 'package:convivalapp/home.dart';
import 'package:convivalapp/screens/screen_1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome(navigateToHomePage);
  }

  _navigatetohome(void Function() navigateCallback) async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});

    navigateCallback();
  }

  void navigateToHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Screen1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Add GestureDetector widget
      onTap: navigateToHomePage, // Trigger navigation on tap
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/images/splashImg.png'),
        ),
      ),
    );
  }
}
