import 'package:flutter/material.dart';
import 'package:my_portfolio/view/pages/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(395, name: MOBILE),
          ResponsiveBreakpoint.resize(590, name: "590"),
          ResponsiveBreakpoint.resize(690, name: "690"),
          ResponsiveBreakpoint.resize(790, name: "790"),
          ResponsiveBreakpoint.autoScale(866, name: "866"),
          ResponsiveBreakpoint.autoScale(1024, name: TABLET),
          ResponsiveBreakpoint.autoScale(1340, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
