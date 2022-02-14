import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/constant/my_colors.dart';

class H1 extends StatelessWidget {
  const H1({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 58,
      ),
    );
  }
}

class H2 extends StatelessWidget {
  const H2({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.barlowCondensed(color: Colors.white, fontSize: 42),
    );
  }
}

class H3 extends StatelessWidget {
  const H3({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.barlowCondensed(color: Colors.white, fontSize: 32),
    );
  }
}

class H4 extends StatelessWidget {
  const H4({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.roboto(color: Colors.white, fontSize: 24),
    );
  }
}

class H5 extends StatelessWidget {
  const H5({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.barlowCondensed(color: MyColors.black, fontSize: 20),
    );
  }
}

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.barlowCondensed(
          color: MyColors.black, fontSize: 44, fontWeight: FontWeight.w600),
    );
  }
}

class ProjectSubTitle extends StatelessWidget {
  const ProjectSubTitle({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.barlowCondensed(
          color: MyColors.black, fontSize: 32, fontWeight: FontWeight.w400),
    );
  }
}
