import 'dart:ui';

import 'package:flutter/material.dart';
import '../styles.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Screen1BGImg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: backgroundFilter,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(gradient: backgroundGradient),
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 213,
                    height: 213,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFDB62F3),
                          Color(0xFF400C73),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(213),
                    ),
                  ),
                  // Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 87, sigmaY: 87), child: Container(),)),
                  Image.asset('assets/images/1stPrizeLogo.png'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
