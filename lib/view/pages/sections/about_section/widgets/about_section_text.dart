import 'package:flutter/material.dart';

import '../../../../../consts.dart';

class AboutSectionText extends StatelessWidget {
  final String text;
  final double fontSize;

  const AboutSectionText({
    super.key,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w200,
          color: kTextColor,
          height: 2,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
