// All Flutter Built-in Imports Here.
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.
import 'package:cooperai/constants/texts.dart';

// All Attributes or Constants Here.

class TildeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.40);

    var firstControlPoint = Offset(size.width * 0.23, size.height * 0.10);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.45);
    var secondControlPoint = Offset(size.width * 0.65, size.height * 0.65);
    var secondEndPoint = Offset(size.width, size.height * 0.30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height * 0.50);

    var thirdControlPoint = Offset(size.width * 0.72, size.height * 0.80);
    var thirdEndPoint = Offset(size.width * 0.5, size.height * 0.63);
    var fourthControlPoint = Offset(size.width * 0.15, size.height * 0.25);
    var fourthEndPoint = Offset(0, size.height * 0.65);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.lineTo(0, size.height * 0.25);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WavyContainer extends StatelessWidget {
  final double height;
  final Color color;

  const WavyContainer({
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TildeClipper(),
      child: Container(
        height: height,
        color: color,
        child: const Stack(
          children: [
            WavyText(
                text: 'U',
                edgeInsets: EdgeInsets.only(bottom: 60),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'n',
                edgeInsets: EdgeInsets.only(left: 20, bottom: 70),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'l',
                edgeInsets: EdgeInsets.only(left: 40, bottom: 80),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'i',
                edgeInsets: EdgeInsets.only(left: 50, bottom: 90),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'm',
                edgeInsets: EdgeInsets.only(left: 60, bottom: 90),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'i',
                edgeInsets: EdgeInsets.only(left: 85, bottom: 80),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 't',
                edgeInsets: EdgeInsets.only(left: 95, bottom: 80),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'e',
                edgeInsets: EdgeInsets.only(left: 105, bottom: 70),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'd',
                edgeInsets: EdgeInsets.only(left: 120, bottom: 55),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'f',
                edgeInsets: EdgeInsets.only(left: 150, top: 5),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'e',
                edgeInsets: EdgeInsets.only(left: 160, top: 20),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'a',
                edgeInsets: EdgeInsets.only(left: 175, top: 30),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 't',
                edgeInsets: EdgeInsets.only(left: 195, top: 50),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'u',
                edgeInsets: EdgeInsets.only(left: 208, top: 55),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'r',
                edgeInsets: EdgeInsets.only(left: 230, top: 60),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'e',
                edgeInsets: EdgeInsets.only(left: 240, top: 60),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 's',
                edgeInsets: EdgeInsets.only(left: 257, top: 55),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'w',
                edgeInsets: EdgeInsets.only(left: 285, top: 20),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'i',
                edgeInsets: EdgeInsets.only(left: 308, top: 5),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 't',
                edgeInsets: EdgeInsets.only(left: 318, bottom: 5),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'h',
                edgeInsets: EdgeInsets.only(left: 330, bottom: 20),
                alignment: Alignment.centerLeft),
            WavyText(
                text: 'c',
                edgeInsets: EdgeInsets.only(left: 360, bottom: 40),
                alignment: Alignment.centerLeft),
          ],
        ),
      ),
    );
  }
}

class WavyText extends StatelessWidget {
  final String text;
  final EdgeInsets edgeInsets;
  final AlignmentGeometry alignment;

  const WavyText(
      {super.key,
      required this.text,
      required this.edgeInsets,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets,
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppText(
            text: text,
            textSize: 24,
          ),
        ),
      ),
    );
  }
}
