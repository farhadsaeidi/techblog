import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';

footer(Size screenSize) {
  return Positioned(
    right: 0,
    left: 0,
    bottom: 0,
    child: Container(
      height: screenSize.height / 9,
      // کانتینر ترنسپرنت فوتر به صورت هاله
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: GradiantColors.footerBackground,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      // محتوای فوتر
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 15, 35, 20),
        child: Container(
          height: screenSize.height / 8,
          // بک گراند فوتر
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
              IconButton(
                onPressed: (() {}),
                icon: Assets.icons.home.image(
                  width: 28,
                  height: 28,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: (() {}),
                icon: Assets.icons.write.image(
                  width: 28,
                  height: 28,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: (() {}),
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
