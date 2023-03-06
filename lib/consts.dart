import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Colors
const kPrimaryColor = Colors.white;
const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

// Spacing
const kDefaultPadding = 20.0;
Widget kSizeVer(double height) => SizedBox(height: height);
Widget kSizeHor(double width) => SizedBox(width: width);

// BoxShadow
final kDefaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// ...
class ResponsiveConst {
  // TOP SECTION
  static final List<Condition<double>> topSectionBackgroundImageMaxHeight = [
    const Condition.smallerThan(name: MOBILE, value: 360.0),
    const Condition.smallerThan(name: "590", value: 400.0),
    const Condition.smallerThan(name: "690", value: 400.0),
    const Condition.smallerThan(name: "790", value: 400.0),
    const Condition.smallerThan(name: "866", value: 500.0),
  ];

  static final List<Condition<double>> topSectionBackgroundImageMinHeight = [
    const Condition.smallerThan(name: MOBILE, value: 360.0),
    const Condition.smallerThan(name: "590", value: 300.0),
    const Condition.smallerThan(name: "690", value: 300.0),
    const Condition.smallerThan(name: "790", value: 300.0),
    const Condition.smallerThan(name: "866", value: 300.0),
  ];

  // BLUR BOX
  static final List<Condition<double>> topSectionBlurBoxMaxWidth = [
    const Condition.smallerThan(name: MOBILE, value: 360.0),
    const Condition.smallerThan(name: "590", value: 450.0),
    const Condition.smallerThan(name: "690", value: 550.0),
    const Condition.smallerThan(name: "790", value: 650.0),
    const Condition.smallerThan(name: "866", value: 720.0),
    const Condition.smallerThan(name: TABLET, value: 800.0),
  ];

  static final List<Condition<double>> topSectionBlurBoxMaxHeight = [
    const Condition.smallerThan(name: MOBILE, value: 260.0),
    const Condition.smallerThan(name: "590", value: 320.0),
    const Condition.smallerThan(name: "690", value: 360.0),
    const Condition.smallerThan(name: "866", value: 400.0),
    const Condition.smallerThan(name: TABLET, value: 450.0),
  ];

  // Tulisan
  static final List<Condition<double>> topSectionHelloThereFontSize = [
    const Condition.smallerThan(name: "590", value: 17.0),
    const Condition.smallerThan(name: "690", value: 18.0),
    const Condition.smallerThan(name: "790", value: 20.0),
    const Condition.smallerThan(name: "866", value: 23.0),
  ];

  static final List<Condition<double>> topSectionMyNameFontSize = [
    const Condition.smallerThan(name: "590", value: 36.0),
    const Condition.smallerThan(name: "690", value: 40.0),
    const Condition.smallerThan(name: "790", value: 47.0),
    const Condition.smallerThan(name: "866", value: 60.0),
    const Condition.smallerThan(name: TABLET, value: 70.0),
  ];

  static final List<Condition<double>> topSectionSubjectFontSize = [
    const Condition.smallerThan(name: "590", value: 17.0),
    const Condition.smallerThan(name: "690", value: 18.0),
    const Condition.smallerThan(name: "790", value: 20.0),
    const Condition.smallerThan(name: "866", value: 23.0),
  ];

  // Image
  static final List<Condition<double>> topSectionImageBackgroundRadius = [
    const Condition.smallerThan(name: "590", value: 83.0),
    const Condition.smallerThan(name: "690", value: 97.0),
    const Condition.smallerThan(name: "790", value: 105.0),
    const Condition.smallerThan(name: "866", value: 110.0),
    const Condition.smallerThan(name: TABLET, value: 130.0),
  ];

  static final List<Condition<double>> topSectionImage = [
    const Condition.smallerThan(name: "590", value: 77.0),
    const Condition.smallerThan(name: "690", value: 90.0),
    const Condition.smallerThan(name: "790", value: 98.0),
    const Condition.smallerThan(name: "866", value: 100.0),
    const Condition.smallerThan(name: TABLET, value: 120.0),
  ];
}

class ResponsiveAboutConst {
  static final List<Condition<double>> containerSize = [
    const Condition.smallerThan(name: MOBILE, value: 400.0),
    const Condition.smallerThan(name: "590", value: 455.0),
    const Condition.smallerThan(name: "690", value: 555.0),
    const Condition.smallerThan(name: "790", value: 660.0),
    const Condition.smallerThan(name: "866", value: 720.0),
    const Condition.smallerThan(name: TABLET, value: 770.0),
    const Condition.smallerThan(name: DESKTOP, value: 900.0),
  ];

  static final List<Condition<double>> aboutMyStoryFontSize = [
    const Condition.smallerThan(name: "790", value: 26.0),
    const Condition.smallerThan(name: TABLET, value: 30.0),
    const Condition.smallerThan(name: DESKTOP, value: 40.0),
  ];

  static final List<Condition<double>> aboutDescFontSize = [
    const Condition.smallerThan(name: TABLET, value: 11.0),
    const Condition.smallerThan(name: DESKTOP, value: 13.0),
  ];

  // Phone Size
  static final List<Condition<double>> aboutMyStoryPhoneFontSize = [
    const Condition.smallerThan(name: "590", value: 19.0),
    const Condition.smallerThan(name: "790", value: 26.0),
    const Condition.smallerThan(name: TABLET, value: 30.0),
    const Condition.smallerThan(name: DESKTOP, value: 40.0),
  ];

  static final List<Condition<double>> experienceCardHeight = [
    const Condition.smallerThan(name: "690", value: 120.0),
    const Condition.smallerThan(name: "790", value: 170.0),
    const Condition.smallerThan(name: TABLET, value: 180.0),
    const Condition.smallerThan(name: DESKTOP, value: 210.0),
  ];

  static final List<Condition<double>> experienceCardWidth = [
    const Condition.smallerThan(name: "690", value: 120.0),
    const Condition.smallerThan(name: TABLET, value: 165.0),
    const Condition.smallerThan(name: DESKTOP, value: 210.0),
  ];

  static final List<Condition<double>> experienceCardNumberSize = [
    const Condition.smallerThan(name: "690", value: 40.0),
    const Condition.smallerThan(name: TABLET, value: 60.0),
    const Condition.smallerThan(name: DESKTOP, value: 80.0),
  ];

  static final List<Condition<double>> experienceCardYearSize = [
    const Condition.smallerThan(name: "690", value: 8.0),
    const Condition.smallerThan(name: "790", value: 12.0),
    const Condition.smallerThan(name: TABLET, value: 13.0),
    const Condition.smallerThan(name: DESKTOP, value: 16.0),
  ];
}

class ResponsiveProjectConst {}

class ResponsiveSectionTitleConst {
  static final List<Condition<double>> containerMaxWidth = [
    const Condition.smallerThan(name: "590", value: 455.0),
    const Condition.smallerThan(name: "690", value: 555.0),
    const Condition.smallerThan(name: "790", value: 660.0),
    const Condition.smallerThan(name: "866", value: 720.0),
    const Condition.smallerThan(name: TABLET, value: 770.0),
    const Condition.smallerThan(name: DESKTOP, value: 900.0),
  ];

  static final List<Condition<double>> containerHeight = [
    const Condition.smallerThan(name: TABLET, value: 770.0),
    const Condition.smallerThan(name: DESKTOP, value: 900.0),
  ];
}

class AboutSectionConst {
  static const String aboutMyStory =
      "Hi, my name is Kisah Tegar Putra Abdi, I'm from Indonesia. I really like learning about programming, I learned programming since I was in high school. The first language I learned was python, creating desktop applications and other programs.";

  static const String experienceStory =
      "And now I'm interested in Flutter making mobile applications, desktops, websites and others. I am interested in studying technology, if you have any ideas, projects you can contact me";
}
