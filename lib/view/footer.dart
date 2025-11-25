import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:tech_blog/view/home_main.dart';
import 'package:tech_blog/view/user_profile.dart';

class Footer extends StatelessWidget {
  final Size screenSize;
  // VoidCallback ---> تابع بدون ورودی و خروجی
  final VoidCallback? onHome;
  final VoidCallback? onWrite;
  final VoidCallback? onProfile;

  const Footer({
    super.key,
    required this.screenSize,
    this.onHome,
    this.onWrite,
    this.onProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: screenSize.height / 8,
        decoration: BoxDecoration(gradient: GradiantColors.footerBackground),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 15, 35, 35),
          child: Container(
            height: screenSize.height / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                colors: GradiantColors.footer,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.7),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            // آیکون های فوتر
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // خانه اصلی
                IconButton(
                  onPressed: () {
                    if (onHome != null) {
                      // ! ---> اطمینان از اینکه تابع نال نیست
                      onHome!();
                      return;
                    }
                    // اگه توی صفحه هوم باشیم با کلیک روی دکمه هوم هیچ اتفاقی نمیفته (واسه محکم کاری!)
                    if (context.findAncestorWidgetOfExactType<HomeMain>() != null) {
                      return;
                    } else {
                      // اگه تابع onHome نال باشه و توی یه صفحه دیگه دکمه هوم کلیک شده باشه
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const HomeMain()),
                      );
                    }
                  },
                  icon: Assets.icons.home.image(
                    width: 28,
                    height: 28,
                    color: Colors.white,
                  ),
                ),
                //
                IconButton(
                  onPressed: () {
                    if (onWrite != null) onWrite!();
                  },
                  icon: Assets.icons.write.image(
                    width: 28,
                    height: 28,
                    color: Colors.white,
                  ),
                ),
                // پروفایل کاربر
                IconButton(
                  onPressed: () {
                    if (onProfile != null) {
                      onProfile!();
                      return;
                    }
                    if (context.findAncestorWidgetOfExactType<UserProfile>() != null) {
                      return;
                    } else {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const UserProfile()),
                      );
                    }
                  },
                  icon: Assets.icons.user.image(
                    width: 28,
                    height: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
