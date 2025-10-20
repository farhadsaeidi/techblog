import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/colors.dart';
// import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/home_splash_screen.dart';

void main() {
  // تغییر رنگ استاتوس و نویگیشن بار
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.navigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // تنطیم فونت
      theme: ThemeData(
        fontFamily: 'IRANSANS',
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: SolidColors.bannerSubTitle,
          ),
          headlineMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: SolidColors.bannerTitle,
          ),
          headlineLarge: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
          displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          // titleSmall: TextStyle(
          //   fontSize: 12,
          //   fontWeight: FontWeight.w500,
          //   color: SolidColors.colorTitle,
          // ),
          titleMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: SolidColors.colorTitle,
          ),
          // titleLarge: TextStyle(
          //   fontFamily: 'DANA',
          //   fontSize: 14,
          //   fontWeight: FontWeight.w600,
          //   color: Colors.white,
          // ),
          // bodyLarge: TextStyle(
          //   fontSize: 13,
          //   fontWeight: FontWeight.w400,
          //   color: Colors.black,
          // ),
          // bodyMedium: TextStyle(
          //   fontSize: 12,
          //   fontWeight: FontWeight.w300,
          //   color: Colors.black87,
          // ),
          // labelSmall: TextStyle(
          //   fontSize: 11,
          //   fontWeight: FontWeight.w200,
          //   color: Colors.grey[700],
          // ),
          labelMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          // labelLarge: TextStyle(
          //   fontSize: 13,
          //   fontWeight: FontWeight.w500,
          //   color: Colors.red,
          // ),
        ),
      ),
      // تنظیمات راست چین کردن پروژه
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // فارسی
      ],
      locale: const Locale('fa'), // زبان پیش‌فرض
      home: HomeSplashScreen(),
    );
  }
}
