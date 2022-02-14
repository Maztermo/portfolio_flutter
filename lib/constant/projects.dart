import 'package:portfolio_flutter/constant/image_strings.dart';
import 'package:portfolio_flutter/model/project.dart';

class Projects {
  static Project ventyr = Project(
    projectName: "Ventyr",
    subTitle: "Location based ticket platform",
    author: "Solodev",
    forCompany: "Ventyr Opplevelser AS",
    timeSpan: "2020 - 2022",
    imageString: ImageStrings.ventyrMock,
    onAndroid: true,
    onAppStore: true,
  );

  static Project anue = Project(
    projectName: "Anue",
    subTitle: "Breastmilk donation tracker",
    author: "Solodev",
    forCompany: "Anue AS",
    timeSpan: "2021 - 2022",
    imageString: ImageStrings.anueMock,
    onAndroid: true,
    onAppStore: true,
  );

  static Project guezz = Project(
    projectName: "Guezz The Word",
    subTitle: "Hangman / word guessing game",
    author: "Solodev",
    forCompany: "Myself",
    timeSpan: "2020",
    imageString: ImageStrings.guezzMock,
    onAndroid: false,
    onAppStore: true,
  );
}
