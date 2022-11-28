import 'package:flutter/material.dart';

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
