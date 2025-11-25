import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/component.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/strings.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // عکس پروفایل
            Image(image: AssetImage('assets/images/user2.png'), height: 100),
            const SizedBox(height: 6),
            // کپشن عکس پروفایل
            SectionHeader(
              text: Strings.profileImageCaption,
              icon: Assets.icons.bluePen.provider(),
              textTheme: textTheme,
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 60),
            // نام و نام خانوادگی و ایمیل کاربر
            Text("کاکرو یوگا", style: textTheme.titleLarge),
            const SizedBox(height: 6),
            Text("KakeroYouga@gmail.com", style: textTheme.labelLarge),
            const SizedBox(height: 50),
            TechDivider(screenSize: screenSize),
            // مقالات مورد علاقه من
            InkWell(
              onTap: () {},
              splashColor: SolidColors.backgroundEffectColor,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  Strings.myFavoriteArticle,
                  style: textTheme.labelLarge,
                ),
              ),
            ),
            TechDivider(screenSize: screenSize),
            // پادکست های مورد علاقه من
            InkWell(
              onTap: () {},
              splashColor: SolidColors.backgroundEffectColor,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  Strings.myFavoritePodcast,
                  style: textTheme.labelLarge,
                ),
              ),
            ),
            TechDivider(screenSize: screenSize),
            // خروج از حساب کاربری
            InkWell(
              onTap: () {},
              splashColor: SolidColors.backgroundEffectColor,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  Strings.logOut,
                  style: textTheme.labelLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
