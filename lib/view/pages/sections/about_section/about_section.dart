import 'package:flutter/material.dart';
import 'package:my_portfolio/consts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets/about_section_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: ResponsiveValue(
          context,
          defaultValue: 1110.0,
          valueWhen: ResponsiveAboutConst.containerSize,
        ).value!,
      ),
      // color: Colors.red,
      child: Column(
        children: [
          // NOTE: Display for bigger then phone
          ResponsiveVisibility(
            hiddenWhen: const [Condition.smallerThan(name: "690")],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About \nmy story",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 60.0,
                          valueWhen: ResponsiveAboutConst.aboutMyStoryFontSize,
                        ).value!,
                      ),
                ),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 15.0,
                      valueWhen: ResponsiveAboutConst.aboutDescFontSize,
                    ).value!,
                  ),
                ),
                const ExperienceCard(
                  numberExp: "01",
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                ),
                Expanded(
                  child: AboutSectionText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 15.0,
                      valueWhen: ResponsiveAboutConst.aboutDescFontSize,
                    ).value!,
                  ),
                ),
              ],
            ),
          ),

          // NOTE: Display for Phone
          ResponsiveVisibility(
            visible: false,
            visibleWhen: const [Condition.smallerThan(name: "690")],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Text(
                        "About \nmy story",
                        style:
                            Theme.of(context).textTheme.displayMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: ResponsiveValue(
                                    context,
                                    defaultValue: 60.0,
                                    valueWhen: ResponsiveAboutConst
                                        .aboutMyStoryPhoneFontSize,
                                  ).value!,
                                ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Expanded(
                      child: AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 15.0,
                          valueWhen: ResponsiveAboutConst.aboutDescFontSize,
                        ).value!,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: ExperienceCard(numberExp: "01"),
                    ),
                    Expanded(
                      child: AboutSectionText(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 15.0,
                          valueWhen: ResponsiveAboutConst.aboutDescFontSize,
                        ).value!,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String numberExp;
  final EdgeInsetsGeometry? margin;

  const ExperienceCard({
    super.key,
    required this.numberExp,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(kDefaultPadding),
      height: ResponsiveValue(
        context,
        defaultValue: 240.0,
        valueWhen: ResponsiveAboutConst.experienceCardHeight,
      ).value!,
      width: ResponsiveValue(
        context,
        defaultValue: 255.0,
        valueWhen: ResponsiveAboutConst.experienceCardWidth,
      ).value!,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 237, 232, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 214, 210, 252),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 6,
              color: const Color.fromARGB(255, 4, 0, 255).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numberExp,
                  style: TextStyle(
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 100.0,
                      valueWhen: ResponsiveAboutConst.experienceCardNumberSize,
                    ).value!,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = const Color.fromARGB(255, 163, 164, 255)
                          .withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: const Color.fromARGB(255, 4, 0, 255)
                            .withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numberExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveValue(
                      context,
                      defaultValue: 100.0,
                      valueWhen: ResponsiveAboutConst.experienceCardNumberSize,
                    ).value!,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              "Years of Experience",
              style: TextStyle(
                color: const Color.fromARGB(255, 25, 0, 255),
                fontSize: ResponsiveValue(
                  context,
                  defaultValue: 19.0,
                  valueWhen: ResponsiveAboutConst.experienceCardYearSize,
                ).value!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
