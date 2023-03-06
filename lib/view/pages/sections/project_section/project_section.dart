import 'package:flutter/material.dart';
import 'package:my_portfolio/consts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../widget/section_title.dart';

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
