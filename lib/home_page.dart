// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/model/fake_data.dart';
import 'package:tech_blog/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    int hottestPostsNumber = hottestPostsList.getRange(0, 5).length;

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
                        // متن بالایی
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        // متن پایینی
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
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: hashTagList.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return hashTagItem(index, textTheme);
                  }),
                ),
              ),
              SizedBox(height: 32),
              // عنوان مشاهده داغ ترین نوشته ها
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(
                      Assets.icons.bluePen.provider(),
                      color: SolidColors.colorTitle,
                    ),
                    SizedBox(width: 8),
                    Text(
                      Strings.viewHottestPosts,
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              // عکس، کاور، متن روی عکس و متن زیر عکس مشاهده داغ ترین نوشته ها
              SizedBox(
                height: screenSize.height / 4.1,
                child: ListView.builder(
                  itemCount: hottestPostsNumber,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return hottestPostsItem(index, textTheme, screenSize, hottestPostsNumber);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  hashTagItem(index, textTheme) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        index == hashTagList.length - 1 ? 20 : 8,
        0,
        index == 0 ? 20 : 8,
        0,
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

  hottestPostsItem(index, textTheme, screenSize, hottestPostsNumber) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        index == hottestPostsNumber - 1 ? 20 : 12,
        0,
        index == 0 ? 20 : 12,
        0,
      ),
      child: Column(
        children: [
          // عکس، کاور و متن روی عکس
          SizedBox(
            width: screenSize.width / 2,
            height: screenSize.height / 5.4,
            child: Stack(
              children: [
                // عکس و کاور روی عکس
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    image: DecorationImage(
                      image: NetworkImage(hottestPostsList[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // کاور روی عکس
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                      colors: GradiantColors.homeHottestPostsCover,
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                // متن روی عکس
                Positioned(
                  bottom: 15,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          hottestPostsList[index].writer,
                          style: textTheme.headlineSmall,
                        ),
                        Row(
                          children: [
                            Text(
                              hottestPostsList[index].view,
                              style: textTheme.headlineSmall,
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              color: SolidColors.bannerSubTitle,
                              size: 17,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          // متن زیر عکس
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6),
            width: screenSize.width / 2,
            child: Text(
              hottestPostsList[index].title,
              style: textTheme.labelMedium,
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
