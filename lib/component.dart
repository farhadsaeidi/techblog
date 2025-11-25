import 'package:flutter/material.dart';
import 'package:tech_blog/colors.dart';

class SectionHeader extends StatelessWidget {
  final String text;
  final ImageProvider icon;
  final TextTheme textTheme;
  final MainAxisAlignment mainAxisAlignment;

  const SectionHeader({
    super.key,
    required this.text,
    required this.icon,
    required this.textTheme,
    this.mainAxisAlignment = MainAxisAlignment.start
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        0,
        mainAxisAlignment == MainAxisAlignment.start ? 20 : 0,
        0,
      ),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          ImageIcon(icon, color: SolidColors.colorTitle),
          const SizedBox(width: 8),
          Text(text, style: textTheme.titleMedium),
        ],
      ),
    );
  }
}

class TechDivider extends StatelessWidget {
  const TechDivider({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: SolidColors.divider,
      thickness: 1,
      indent: screenSize.width / 7,
      endIndent: screenSize.width / 7,
    );
  }
}
