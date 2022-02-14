import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constant/my_colors.dart';
import 'package:portfolio_flutter/constant/projects.dart';
import 'package:portfolio_flutter/constant/text_headers.dart';
import 'package:portfolio_flutter/project_container.dart';

import 'constant/image_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _containerWidth = 600;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Remove this box w/width to center H1
            const SizedBox(width: double.infinity),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              child: FittedBox(
                alignment: Alignment.topLeft,
                fit: BoxFit.scaleDown,
                child: Row(children: const [
                  FlutterLogo(size: 48),
                  SizedBox(width: 10),
                  H1(text: "Martin Mastermo Jenssen"),
                ]),
              ),
            ),
            Container(
              height: _size.height - 100,
              width: double.infinity,
              color: MyColors.darkBlue,
              child: Column(
                children: [
                  const Spacer(),
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Column(children: const [
                        H3(text: "iOS and Android developer    "),
                        H3(text: "at your service    ")
                      ]),
                    ),
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      width: 600,
                      child: Image.asset(
                        ImageStrings.mobileDev,
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: MyColors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                  )
                ],
              ),
            ),

            const SizedBox(height: 50),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              width: 1000,
              child: const H3(
                  text:
                      "Hi I'm Martin,\n\nApp developer with 2 years experience designing & building apps for startups.\n\nI believe great app ideas should be put to the test in the hands of end-users as early as possible.\n\nFeel free to contact me for a chat about how we can start building your app today.\n\nMail: something@gmail.com\nPhone: +47 123 45 678"),
            ),
            const SizedBox(height: 100),
            SizedBox(
                width: _size.width * 0.5,
                child: H3Centered(
                    text: "Also do have a look at my previous work")),
            const SizedBox(height: 20),
            const Icon(Icons.arrow_downward, size: 44, color: Colors.white),
            const SizedBox(height: 40),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              child: Container(
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    ProjectContainer(
                      containerWidth: _containerWidth,
                      project: Projects.ventyr,
                    ),
                    const Divider(height: 50),
                    ProjectContainer(
                      containerWidth: _containerWidth,
                      project: Projects.anue,
                    ),
                    const Divider(height: 50),
                    ProjectContainer(
                      containerWidth: _containerWidth,
                      project: Projects.guezz,
                    ),
                    const Divider(height: 50),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
              child: Center(
                child: H5White(
                    text:
                        "This website portfolio was developed with Flutter - Thanks for taking a look!"),
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
