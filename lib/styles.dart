// Custom Colors
import 'package:flutter/material.dart';

const Color backgroundColor = Color(0xFF000813);
const Color primaryTextColor = Color(0xFFFFFFFF);
const Color backgroundFilter = Color.fromRGBO(0, 17, 39, 0.76);
const Gradient backgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 0.6125, 1.0],
  colors: [
    Color(0xFF000813),
    Color.fromRGBO(0, 8, 19, 0.52),
    Color(0xFF000813),
  ],
);
