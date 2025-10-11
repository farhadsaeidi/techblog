// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/model/fake_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                      height: (screenSize.height) / 13.6,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              // بنر
              Stack(
                children: [
                  // قالب بنر شامل عکس و کاور
                  Container(
                    // 1.13 ---> نسبت عرض صفحه به عرض بنر داخل فایل ایکس دی
                    // 4 ---> نسبت ارتفاع صفحه به ارتفاع بنر داخل فایل ایکس دی
                    width: (screenSize.width),
                    height: (screenSize.height) / 4,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        // عکس رو از فایل فیک دیتا میگیریم
                        image: AssetImage(homePageBannerMap["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // کاور بنر
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: GradiantColors.homePosterCover,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  // متن های روی بنر
                  Positioned(
                    bottom: 15,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // homePageBannerMap["writer"] + " - " + homePageBannerMap["date"],
                                "${homePageBannerMap["writer"]} - ${homePageBannerMap["date"]}",
                                style: textTheme.headlineSmall,
                              ),
                              // Text(
                              //   homePageBannerMap["like"] == "1" ? "Like 1" : "Likes ${homePageBannerMap["like"]}",
                              //   style: textTheme.headlineSmall,
                              // ),
                              Row(
                                children: [
                                  Text(
                                    homePageBannerMap["view"],
                                    style: textTheme.headlineSmall,
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: SolidColors.bannerSubTitle, 
                                    size: 17,       
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: Text(
                            "دوازده قدم تا تبدیل شدن به یک برنامه نویس حرفه ای",
                            style: textTheme.headlineMedium,
                            textAlign: TextAlign.justify,
                            maxLines: 1, // محدود کردن به یک خط
                            overflow: TextOverflow.ellipsis, // نمایش سه نقطه در صورت سرریز
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // لیست هشتگ ها
              Container(
                height: 40,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ListView.builder(
                  itemCount: hashTagList.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return hashTagItem(index, textTheme);
                  })
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding hashTagItem(int index, TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        index == hashTagList.length - 1 ? 0 : 8,
        0,
        index == 0 ? 0 : 8,
        0
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            colors: GradiantColors.tags,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              ImageIcon(
                Assets.icons.hashtagicon.provider(),
                color: SolidColors.lightText,
                size: 15,
              ),
              SizedBox(width: 10),
              Text(hashTagList[index].title, style: textTheme.displaySmall),
            ],
          ),
        ),
      ),
    );
  }
}
