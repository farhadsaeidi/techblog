// import 'dart:ui';
import 'package:flutter/material.dart';

class SolidColors {
  static const Color primaryColor = Color.fromARGB(255, 77, 1, 55); 
  static const Color bannerTitle = Color.fromARGB(255, 255, 255, 255); 
  static const Color bannerSubTitle = Color.fromARGB(200, 255, 255, 255); 
  static const Color colorTitle = Color.fromARGB(255, 40, 107, 184); 
  static const Color textTitle = Color.fromARGB(255, 0, 0, 0); 
  static const Color scafoldBg = Color.fromARGB(255, 255, 255, 255); 
  static const Color statusBarColor = Color.fromARGB(255, 255, 255, 255); 
  static const Color navigationBarColor = Color.fromARGB(255, 255, 255, 255); 
  static const Color lightText = Color.fromARGB(255, 255, 255, 255); 
  static const Color selectedPodCast = Color.fromARGB(255, 255, 139, 26); 
  static const Color submitArticle = Color.fromARGB(255, 209, 209, 209); 
  static const Color submitPodCast = Color.fromARGB(255, 246, 246, 246); 
  static const Color subText = Color.fromARGB(255, 197, 197, 197); 
  static const Color divider = Color.fromARGB(255, 215, 215, 215); 
  static const Color backgroundEffectColor = Color.fromARGB(255, 105, 6, 109); 
}

class GradiantColors {
  static const List<Color> footer = [
    Color.fromARGB(255, 25, 0, 94),
    Color.fromARGB(255, 68, 4, 87)
  ];
  // static const List<Color> footerBackground = [
  //   Color.fromARGB(0, 255, 255, 255),
  //   Color.fromARGB(255, 255, 255, 255)
  // ];
  static const footerBackground = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromRGBO(255, 255, 255, 1.0), // 0%
      Color.fromRGBO(255, 255, 255, 1.0), // 45%
      Color.fromRGBO(255, 255, 255, 0.8), // 55%
      Color.fromRGBO(255, 255, 255, 0.6), // 70%
      Color.fromRGBO(255, 255, 255, 0.4), // 80%
      Color.fromRGBO(255, 255, 255, 0.2), // 95%
      Color.fromRGBO(255, 255, 255, 0.0), // 100%
    ],
    stops: [0.0, 0.45, 0.55, 0.70, 0.80, 0.95, 1.0]
  );
  static const List<Color> tags = [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 63, 63, 63)
  ];
  static const List<Color> homePosterCover = [
    Color.fromARGB(0, 0, 0, 0),
    Color.fromARGB(179, 72, 20, 88), // 70 %
    Color.fromARGB(255, 28, 20, 81)
  ];
  static const List<Color> homeHottestPostsCover = [
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(0, 0, 0, 0)
  ];
}
