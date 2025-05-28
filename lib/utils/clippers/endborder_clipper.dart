import 'package:flutter/material.dart';

class EndBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    // TODO: implement getClip
    Path path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(
      width * 0.02,
      height * 0.9,
      width * 0.1,
      height * 0.9,
    );
    path.quadraticBezierTo(
      width * 0.9,
      height * 0.9,
      width * 0.9,
      height * 0.9,
    );
    path.quadraticBezierTo(width * 0.99, height * 0.9, width, height);
    // path.lineTo(width, height);
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
