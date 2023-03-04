import 'package:flutter/material.dart';
import 'package:my_portfolio/view/pages/sections/about_section/about_section.dart';
import 'package:my_portfolio/view/pages/sections/top_section/top_section.dart';

import 'sections/project_section/project_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            AboutSection(),
            ProjectSection(),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
