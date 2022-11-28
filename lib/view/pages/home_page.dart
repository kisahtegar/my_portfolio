import 'package:flutter/material.dart';
import 'package:my_portfolio/consts.dart';
import 'package:my_portfolio/view/pages/sections/about_section/about_section.dart';
import 'package:my_portfolio/view/pages/sections/top_section/top_section.dart';
import 'package:my_portfolio/view/pages/sections/top_section/widget/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopSection(),
            kSizeVer(kDefaultPadding * 2),
            const AboutSection(),
            kSizeVer(kDefaultPadding * 2),
            // kSizeVer(kDefaultPadding * 2),
            // Menu(),
            // Container(
            //   height: 100,
            //   width: 100,
            //   color: Colors.redAccent,
            // ),
          ],
        ),
      ),
    );
  }
}
