import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/view/pages/sections/top_section/widget/menu.dart';
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
          valueWhen: const [
            Condition.smallerThan(name: MOBILE, value: 360.0),
            Condition.smallerThan(name: "590", value: 400.0),
            Condition.smallerThan(name: "690", value: 400.0),
            Condition.smallerThan(name: "790", value: 400.0),
            Condition.smallerThan(name: "866", value: 500.0),
          ],
        ).value!,
        minHeight: ResponsiveValue(
          context,
          defaultValue: 400.0,
          valueWhen: const [
            Condition.smallerThan(name: MOBILE, value: 360.0),
            Condition.smallerThan(name: "590", value: 300.0),
            Condition.smallerThan(name: "690", value: 300.0),
            Condition.smallerThan(name: "790", value: 300.0),
            Condition.smallerThan(name: "866", value: 300.0),
          ],
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
          // color: Colors.red,
          color: Colors.white.withOpacity(0),
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2,
          ),
          constraints: BoxConstraints(
            maxWidth: ResponsiveValue(
              context,
              defaultValue: 1110.0,
              valueWhen: const [
                Condition.smallerThan(name: MOBILE, value: 360.0),
                Condition.smallerThan(name: "590", value: 450.0),
                Condition.smallerThan(name: "690", value: 550.0),
                Condition.smallerThan(name: "790", value: 650.0),
                Condition.smallerThan(name: "866", value: 720.0),
                Condition.smallerThan(name: TABLET, value: 800.0),
              ],
            ).value!,
            maxHeight: ResponsiveValue(
              context,
              defaultValue: 650.0,
              valueWhen: const [
                Condition.smallerThan(name: MOBILE, value: 260.0),
                Condition.smallerThan(name: "590", value: 320.0),
                Condition.smallerThan(name: "690", value: 360.0),
                Condition.smallerThan(name: "866", value: 400.0),
                Condition.smallerThan(name: TABLET, value: 450.0),
              ],
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
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: Colors.white,
                                    fontSize: ResponsiveValue(
                                      context,
                                      defaultValue: 25.0,
                                      valueWhen: const [
                                        Condition.smallerThan(
                                            name: "590", value: 17.0),
                                        Condition.smallerThan(
                                            name: "690", value: 18.0),
                                        Condition.smallerThan(
                                            name: "790", value: 20.0),
                                        Condition.smallerThan(
                                          name: "866",
                                          value: 23.0,
                                        ),
                                      ],
                                    ).value,
                                  ),
                        ),
                        Text(
                          "Kisah Tegar \nPutra Abdi",
                          style: TextStyle(
                            fontSize: ResponsiveValue(
                              context,
                              defaultValue: 100.0,
                              valueWhen: const [
                                Condition.smallerThan(name: "590", value: 36.0),
                                Condition.smallerThan(name: "690", value: 40.0),
                                Condition.smallerThan(name: "790", value: 47.0),
                                Condition.smallerThan(name: "866", value: 60.0),
                                Condition.smallerThan(
                                    name: TABLET, value: 70.0),
                                // Condition.largerThan(name: DESKTOP, value: 100.0)
                              ],
                            ).value,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: Colors.white,
                                    fontSize: ResponsiveValue(
                                      context,
                                      defaultValue: 25.0,
                                      valueWhen: const [
                                        Condition.smallerThan(
                                            name: "590", value: 17.0),
                                        Condition.smallerThan(
                                            name: "690", value: 18.0),
                                        Condition.smallerThan(
                                            name: "790", value: 20.0),
                                        Condition.smallerThan(
                                          name: "866",
                                          value: 23.0,
                                        ),
                                      ],
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
                          valueWhen: const [
                            Condition.smallerThan(name: "590", value: 83.0),
                            Condition.smallerThan(name: "690", value: 97.0),
                            Condition.smallerThan(name: "790", value: 105.0),
                            Condition.smallerThan(name: "866", value: 110.0),
                            Condition.smallerThan(name: TABLET, value: 130.0),
                          ],
                        ).value,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: ResponsiveValue(
                            context,
                            defaultValue: 170.0,
                            valueWhen: const [
                              Condition.smallerThan(name: "590", value: 77.0),
                              Condition.smallerThan(name: "690", value: 90.0),
                              Condition.smallerThan(name: "790", value: 98.0),
                              Condition.smallerThan(name: "866", value: 100.0),
                              Condition.smallerThan(name: TABLET, value: 120.0),
                            ],
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: Theme.of(context).textTheme.headline5!.copyWith(
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
