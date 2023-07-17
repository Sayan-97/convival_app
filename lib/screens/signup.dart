import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/SignUpPageImage.png",
              width: double.infinity,
              height: 480,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                height: 480,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000813), Color(0xff000813)],
                ))),
            Container(
                width: double.infinity,
                height: 480,
                decoration: const BoxDecoration(color: Color(0x4f000813)))
          ],
        ),
        const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Welcome to the World of Convival",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: Colors.white))),
        Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
