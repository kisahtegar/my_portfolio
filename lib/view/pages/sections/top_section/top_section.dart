import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../consts.dart';
import 'widget/icon_button_widget.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: ResponsiveValue(
          context,
          defaultValue: 600.0,
          valueWhen: ResponsiveConst.topSectionBackgroundImageMaxHeight,
        ).value!,
        minHeight: ResponsiveValue(
          context,
          defaultValue: 400.0,
          valueWhen: ResponsiveConst.topSectionBackgroundImageMinHeight,
        ).value!,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background2_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: kDefaultPadding * 2,
          bottom: kDefaultPadding * 2,
        ),
        width: 1100,
        child: Stack(
          children: [
            Center(child: BlurBoxWidget(size: size)),
          ],
        ),
      ),
    );
  }
}

class BlurBoxWidget extends StatelessWidget {
  const BlurBoxWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2,
          ),
          constraints: BoxConstraints(
            maxWidth: ResponsiveValue(
              context,
              defaultValue: 1110.0,
              valueWhen: ResponsiveConst.topSectionBlurBoxMaxWidth,
            ).value!,
            maxHeight: ResponsiveValue(
              context,
              defaultValue: 650.0,
              valueWhen: ResponsiveConst.topSectionBlurBoxMaxHeight,
            ).value!,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // NOTE: Display for bigger then phone
              ResponsiveVisibility(
                hiddenWhen: const [Condition.smallerThan(name: "590")],
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello There!",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                                fontSize: ResponsiveValue(
                                  context,
                                  defaultValue: 25.0,
                                  valueWhen: ResponsiveConst
                                      .topSectionHelloThereFontSize,
                                ).value,
                              ),
                        ),
                        Text(
                          "Kisah Tegar \nPutra Abdi",
                          style: TextStyle(
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 100.0,
                              valueWhen:
                                  ResponsiveConst.topSectionMyNameFontSize,
                            ).value,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                                fontSize: ResponsiveValue(
                                  context,
                                  defaultValue: 25.0,
                                  valueWhen:
                                      ResponsiveConst.topSectionSubjectFontSize,
                                ).value,
                              ),
                        ),
                        const SizedBox(height: 70),
                        Row(
                          children: const [
                            IconButtonWidget(
                              link:
                                  "https://www.instagram.com/kisahtegar_code/",
                              icon: FontAwesomeIcons.instagram,
                            ),
                            IconButtonWidget(
                              link:
                                  "https://www.linkedin.com/in/kisah-tegar-putra-abdi-10510924b/",
                              icon: FontAwesomeIcons.linkedin,
                            ),
                            IconButtonWidget(
                              link: "https://github.com/kisahtegar",
                              icon: FontAwesomeIcons.github,
                            ),
                            IconButtonWidget(
                              link: "https://twitter.com/TegarKisah",
                              icon: FontAwesomeIcons.twitter,
                            ),
                          ],
                        )
                      ],
                    ),
                    const ResponsiveVisibility(
                      hiddenWhen: [Condition.smallerThan(name: "590")],
                      child: Spacer(),
                    ),
                    ResponsiveVisibility(
                      hiddenWhen: const [Condition.smallerThan(name: "590")],
                      child: CircleAvatar(
                        radius: ResponsiveValue(
                          context,
                          defaultValue: 180.0,
                          valueWhen:
                              ResponsiveConst.topSectionImageBackgroundRadius,
                        ).value,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: ResponsiveValue(
                            context,
                            defaultValue: 170.0,
                            valueWhen: ResponsiveConst.topSectionImage,
                          ).value,
                          backgroundColor: Colors.blue,
                          backgroundImage:
                              const AssetImage("assets/images/mine_image.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // NOTE: Display for Phone
              ResponsiveVisibility(
                visible: false,
                visibleWhen: const [Condition.smallerThan(name: "590")],
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 68.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.blue,
                        backgroundImage:
                            AssetImage("assets/images/mine_image.png"),
                      ),
                    ),
                    const Text(
                      "Kisah Tegar Putra Abdi",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "Flutter Developer",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        IconButtonWidget(
                          link: "https://www.instagram.com/kisahtegar_code/",
                          icon: FontAwesomeIcons.instagram,
                        ),
                        IconButtonWidget(
                          link:
                              "https://www.linkedin.com/in/kisah-tegar-putra-abdi-10510924b/",
                          icon: FontAwesomeIcons.linkedin,
                        ),
                        IconButtonWidget(
                          link: "https://github.com/kisahtegar",
                          icon: FontAwesomeIcons.github,
                        ),
                        IconButtonWidget(
                          link: "https://twitter.com/TegarKisah",
                          icon: FontAwesomeIcons.twitter,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
