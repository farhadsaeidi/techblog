import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/model/fake_data.dart';
import 'package:tech_blog/view/footer.dart';
import 'package:tech_blog/view/home_screen.dart';
import 'package:tech_blog/view/user_profile.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  // 0: HomeScreen, 1: UserProfile
  int changeContentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
                height: (screenSize.height) / 13.6,
              ),
              Icon(Icons.search),
            ],
          ),
        ),
      ),
      // محتوای اصلی
      body: Stack(
        children: [
          // IndexedStack ---> این ویجت مثل یک تلویزیون عمل می‌کند که چندین کانال دارد، اما در هر لحظه فقط یکی از آن‌ها را نشان می‌دهد.
          // اینجا چیلدرن دو تا کانال داره که یکی هوم اسکرین (اندیس 0) و یکی یوزر پروفایل (انیس 1) هست
          IndexedStack(
            // این اندیس تعیین می‌کند کدام بخش نمایش داده شود
            index: changeContentIndex,
            children: [
              HomeScreen(
                hottestPostsNumber: hottestPostsNumber,
                hottestPodcastsNumber: hottestPodcastsNumber,
              ),
              UserProfile()
            ],
          ),
          // فوتر
          Footer(
            screenSize: screenSize,
            onHome: () {
              // setState ---> این تابع اول اندیس رو تغییر میده بعد باعث میشه متد بیلد از نو اجرا بشه
              // changeContentIndex != 0 ---> اگه توی صفحه هوم هستی هیچ کاری نکن
              if (changeContentIndex != 0) setState(() => changeContentIndex = 0);
            },
            onProfile: () {
              if (changeContentIndex != 1) setState(() => changeContentIndex = 1);
            },
          ),
        ],
      ),
    );
  }
}
