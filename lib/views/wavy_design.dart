// All Flutter Built-in Imports Here.
import 'package:cooperai/constants/texts.dart';
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.

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

  const WavyContainer({super.key,required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TildeClipper(),
      child: Container(
        height: height,
        color: color,
        child: const AppText(
            text: 'Unlimited features with cooper',
            textSize: 24,
            color: Colors.black),
      ),
    );
  }
}
