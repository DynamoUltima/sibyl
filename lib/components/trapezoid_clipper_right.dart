import 'package:flutter/material.dart';

class TrapezoidRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 0); // Top left point
    path.lineTo(size.width, 0); // Top right point
    path.lineTo(size.width, size.height); // Bottom right point
    path.lineTo(size.width * 0.2, size.height); // Bottom left point Bottom left point

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


//     path.lineTo(0, 0); // Top left point
//     path.lineTo(size.width, 0); // Top right point
//     path.lineTo(size.width * 0.8, size.height); // Bottom right point
//     path.lineTo(size.width * 0.2, size.height); // Bottom left point Bottom left point
