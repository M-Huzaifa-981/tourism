import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;
    path.lineTo(0, height * 0.55);
    path.quadraticBezierTo(width * 0.1,height * 0.55, width * 0.18,height * 0.7,); //c, e
    path.quadraticBezierTo(width * 0.35, height, width*0.55, height*0.62);
    path.quadraticBezierTo(width * 0.59, height * 0.58, width*0.65, height*0.65);
    path.quadraticBezierTo(width * 0.75, height * 0.76, width*0.85, height*0.64);
    path.quadraticBezierTo(width * 0.85, height * 0.65, width*0.92, height*0.56);
    path.quadraticBezierTo(width * 0.97, height * 0.51, width, height*0.54);

    path.lineTo(width, height * 0.45);
    path.lineTo(width, 0);

    // path.lineTo(width, 0); // x,y (x=width , y=height)
    // path.lineTo(width, height * 0.7); // 1
    //
    // path.quadraticBezierTo(
    //   // 2
    //   width * 0.92,
    //   height * 0.72,
    //   width * 0.87,
    //   height * 0.8,
    // );
    // path.quadraticBezierTo(
    //   // 3
    //   width * 0.8,
    //   height * 0.9,
    //   width * 0.7,
    //   height * 0.8,
    // );
    // path.quadraticBezierTo(
    //   // 4
    //   width * 0.62,
    //   height * 0.7,
    //   width * 0.4,
    //   height * 0.88,
    // );
    //
    // path.quadraticBezierTo(
    //   // 6
    //   width * 0.3,
    //   height,
    //   width * 0.22,
    //   height * 0.9,
    // );
    // path.quadraticBezierTo(
    //   // 7
    //   width * 0.12,
    //   height * 0.7,
    //   0,
    //   height * 0.6,
    // );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // You can customize the re-clipping behavior here.
    return false;
  }
}
