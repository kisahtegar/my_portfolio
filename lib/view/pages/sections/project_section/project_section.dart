import 'package:flutter/material.dart';
import 'package:my_portfolio/consts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      // color: Colors.red,
      constraints: BoxConstraints(
        maxWidth: ResponsiveValue(
          context,
          defaultValue: 1110.0,
          valueWhen: const [
            Condition.smallerThan(name: TABLET, value: 850.0),
            Condition.smallerThan(name: DESKTOP, value: 900.0),
          ],
        ).value!,
      ),
      child: Column(
        children: [
          const SectionTitle(
            title: "Project",
            subtitle: "Our project",
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(94, 0, 119, 255),
              boxShadow: [kDefaultShadow],
            ),
            child: const Center(
              child: Text(
                "Coming soon",
                // style: ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
      constraints: BoxConstraints(
        maxWidth: ResponsiveValue(
          context,
          defaultValue: 1100.0,
          valueWhen: const [
            Condition.smallerThan(name: DESKTOP, value: 900.0),
          ],
        ).value!,
      ),
      color: Colors.blue,
      height: ResponsiveValue(
        context,
        defaultValue: 100.0,
        valueWhen: const [
          Condition.smallerThan(name: TABLET, value: 850.0),
          Condition.smallerThan(name: DESKTOP, value: 85.0),
        ],
      ).value!,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: ResponsiveValue(
              context,
              defaultValue: 100.0,
              valueWhen: const [
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
