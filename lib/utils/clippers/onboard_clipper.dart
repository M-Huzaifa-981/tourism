import 'package:flutter/material.dart';

class OnBoardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.lineTo(0, height * 0.98);
    path.quadraticBezierTo(width * 0.07, height, width * 0.12, height * 0.95);
    path.quadraticBezierTo(width * 0.08, height, width * 0.20, height * 0.85);
    path.quadraticBezierTo(
      width * 0.40,
      height * 0.55,
      width * 0.60,
      height * 0.5,
    );
    path.quadraticBezierTo(
      width * 0.7,
      height * 0.47,
      width * 0.80,
      height * 0.5,
    );
    path.quadraticBezierTo(
      width * 0.85,
      height * 0.51,
      width * 0.92,
      height * 0.5,
    );
    path.quadraticBezierTo(width, height * 0.48, width, height * 0.45);
    // path.lineTo(width, height*0.5);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
