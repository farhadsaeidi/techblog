import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Column(
            children: [
              // هدر
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Image(
                      image: Assets.images.logo.provider(), 
                      // 13.6 ---> نسبت ارتفاع صفحه به ارتفاع لوگوی داخل فایل ایکس دی
                      height: (screenSize.height)/13.6
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              // بنر
              Stack(
                children: [
                  // عکس بنر
                  Container(
                    // 1.19 ---> نسبت عرض صفحه به عرض بنر داخل فایل ایکس دی
                    // 4.2 ---> نسبت ارتفاع صفحه به ارتفاع بنر داخل فایل ایکس دی
                    width: (screenSize.width)/1.19,
                    height: (screenSize.height)/4.2,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: Image(image: Assets.images.posterTest.provider()).image,
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  // کاور بنر
                  Container(
                    width: (screenSize.width)/1.19,
                    height: (screenSize.height)/4.2,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: GradiantColors.homePosterCover,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
