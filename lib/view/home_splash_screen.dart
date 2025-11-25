import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/view/home_main.dart';

class HomeSplashScreen extends StatefulWidget {
  const HomeSplashScreen({super.key});

  @override
  State<HomeSplashScreen> createState() => _HomeSplashScreenState();
}

class _HomeSplashScreenState extends State<HomeSplashScreen> {
  @override
  void initState() {
    super.initState();
    // سه ثانیه روی این صفحه بمون بعد برو به صفحه اصلی   
    Future.delayed(Duration(seconds: 3)).then((value) {
      // اگر ویجت فعاله عملیات ناوبری (جابجایی بین صفحات) انجام بشه
      if (mounted) {
        // push ---> با این دستور یه صفحه جدید مثل یه بشقاب 
        // روی بشقاب قبلی (صفحه قبل) گذاشته میشه
        // pushReplacement ---> با این دستور بشقاب جدید جایگزین بشقاب قبلی میشه
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeMain()
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: Assets.images.logo.provider(), height: 120),
            SpinKitFadingCircle(color: SolidColors.primaryColor, size: 70.0),
          ],
        ),
      ),
    );
  }
}
