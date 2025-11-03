import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/model/fake_data.dart';
import 'package:tech_blog/view/footer.dart';
import 'package:tech_blog/view/home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    int hottestPostsNumber = hottestPostsList.getRange(0, 5).length;
    int hottestPodcastsNumber = hottestPodcastList.length;

    return Scaffold(
      // هدر
      appBar: AppBar(
        backgroundColor: SolidColors.scafoldBg,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Image(
                image: Assets.images.logo.provider(),
                // 13.6 ---> نسبت ارتفاع صفحه به ارتفاع لوگوی داخل فایل ایکس دی
                height: (screenSize.height) / 13.6,
              ),
              Icon(Icons.search),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          // بدنه اصلی
          homeScreen(screenSize, textTheme, hottestPostsNumber, hottestPodcastsNumber),
          // فوتر
          footer(screenSize)
        ],
      ),
    );
  }
}
