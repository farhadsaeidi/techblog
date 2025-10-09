import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_blog/gen/assets.gen.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:tech_blog/colors.dart';

void main() {
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
          displayLarge: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          headlineLarge: TextStyle(
            fontFamily: 'DANA',
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          headlineMedium: TextStyle(
            fontFamily: 'DANA',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          titleLarge: TextStyle(
            fontFamily: 'DANA',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.green,
          ),
          bodyLarge: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.black87,
          ),
          labelSmall: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w200,
            color: Colors.grey[700],
          ),
          labelLarge: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Using Flutter Generator
        child: Assets.images.logo.image() 
      ),
    );
  }
}
