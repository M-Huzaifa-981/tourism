
import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path>  {

  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;

    path.lineTo(width, 0); // x,y (x=width , y=height)
    path.lineTo(width, height*0.7); // 1

    path.quadraticBezierTo(     // 2
        width*0.92, height*0.72,
        width*0.87, height*0.8
    );
    path.quadraticBezierTo(     // 3
        width*0.8, height*0.9,
        width*0.7, height*0.8
    );
    path.quadraticBezierTo(     // 4
        width*0.62, height*0.7,
        width*0.4, height*0.88
    );


    path.quadraticBezierTo(     // 6
        width*0.3, height,
        width*0.22, height*0.9
    );
    path.quadraticBezierTo(     // 7
        width*0.12, height*0.7,
        0, height*0.6
    );


    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // You can customize the re-clipping behavior here.
    return false;
  }
}
