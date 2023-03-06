import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../consts.dart';

class SectionTitle extends StatelessWidget {
  final Color? color;
  final String? subtitle;
  final String? title;

  const SectionTitle({
    Key? key,
    this.color,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveValue(
          context,
          defaultValue: 0.0,
          valueWhen: const [
            Condition.smallerThan(name: "690", value: 20.0),
          ],
        ).value!,
      ),
      constraints: BoxConstraints(
        maxWidth: ResponsiveValue(
          context,
          defaultValue: 1100.0,
          valueWhen: ResponsiveSectionTitleConst.containerMaxWidth,
        ).value!,
      ),
      child: Row(
        children: [
          // Container Design
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            padding: EdgeInsets.only(
              bottom: ResponsiveValue(
                context,
                defaultValue: 72.0,
                valueWhen: const [
                  Condition.smallerThan(name: "590", value: 30.0),
                  Condition.smallerThan(name: "790", value: 45.0),
                  Condition.smallerThan(name: TABLET, value: 65.0),
                  Condition.smallerThan(name: DESKTOP, value: 72.0),
                ],
              ).value!,
            ),
            width: ResponsiveValue(
              context,
              defaultValue: 8.0,
              valueWhen: const [
                Condition.smallerThan(name: "590", value: 3.0),
                Condition.smallerThan(name: "790", value: 5.0),
                Condition.smallerThan(name: TABLET, value: 6.0),
                Condition.smallerThan(name: DESKTOP, value: 8.0),
              ],
            ).value!,
            height: ResponsiveValue(
              context,
              defaultValue: 100.0,
              valueWhen: const [
                Condition.smallerThan(name: "590", value: 35.0),
                Condition.smallerThan(name: "790", value: 55.0),
                Condition.smallerThan(name: TABLET, value: 75.0),
                Condition.smallerThan(name: DESKTOP, value: 85.0),
              ],
            ).value!,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),

          // Subtitle and title
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle!,
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w200,
                  fontSize: ResponsiveValue(
                    context,
                    defaultValue: 14.0,
                    valueWhen: const [
                      Condition.smallerThan(name: "590", value: 7.0),
                      Condition.smallerThan(name: "790", value: 8.0),
                      Condition.smallerThan(name: TABLET, value: 10.0),
                      Condition.smallerThan(name: DESKTOP, value: 12.0),
                    ],
                  ).value!,
                ),
              ),
              Text(
                title!,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 56.0,
                        valueWhen: const [
                          Condition.smallerThan(name: "590", value: 20.0),
                          Condition.smallerThan(name: "790", value: 30.0),
                          Condition.smallerThan(name: TABLET, value: 40.0),
                          Condition.smallerThan(name: DESKTOP, value: 50.0),
                        ],
                      ).value!,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
