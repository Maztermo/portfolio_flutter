import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constant/image_strings.dart';
import 'package:portfolio_flutter/constant/my_colors.dart';
import 'package:portfolio_flutter/constant/text_headers.dart';

import 'model/project.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    Key? key,
    required this.project,
    required this.containerWidth,
    required this.imageString,
  }) : super(key: key);

  final Project project;
  final double containerWidth;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade100,
      child: Center(
        child: Container(
          width: containerWidth,
          height: 400,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: ProjectTitle(text: project.projectName)),
                      ProjectSubTitle(text: project.subTitle),
                      const Spacer(),
                      H5(text: "Made for:\n${project.forCompany}"),
                      H5(text: project.timeSpan),
                      const Spacer(),
                      const H5(text: "Available on:"),
                      const Spacer(),
                      Row(
                        children: [
                          if (project.onAppStore)
                            Center(
                              child: SizedBox(
                                  height: 44,
                                  child: Image.asset(ImageStrings.iOS)),
                            ),
                          if (project.onAppStore) const SizedBox(width: 20),
                          if (project.onAndroid)
                            Center(
                              child: SizedBox(
                                  height: 44,
                                  child: Image.asset(ImageStrings.android)),
                            ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                      child: SizedBox(
                child: Image.asset(imageString),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
