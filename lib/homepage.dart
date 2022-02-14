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
              height: 800,
              width: double.infinity,
              color: MyColors.darkBlue,
              child: Column(
                children: [
                  const Spacer(),
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Column(children: [
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
            const H2(text: "My work"),
            const SizedBox(height: 100),
            ProjectContainer(
              containerWidth: _containerWidth,
              project: Projects.ventyr,
              imageString: ImageStrings.ventyrMock,
            ),
            ProjectContainer(
              containerWidth: _containerWidth,
              project: Projects.anue,
              imageString: ImageStrings.ventyrMock,
            ),
            ProjectContainer(
              containerWidth: _containerWidth,
              project: Projects.guezz,
              imageString: ImageStrings.ventyrMock,
            ),

            //
          ],
        ),
      ),
    );
  }
}
