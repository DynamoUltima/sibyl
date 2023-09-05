import 'package:flutter/material.dart';

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

   path.lineTo(0, 0); // Top left point
    path.lineTo(size.width, 0); // Top right point
    path.lineTo(size.width * 0.8, size.height); // Bottom right point
    path.lineTo(size.width * 0.0, size.height); // Bottom left point

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// path.moveTo(size.width * 0.0, 0); // Top left point
//     path.lineTo(size.width * 0.8, 0); // Top right point
//     path.lineTo(size.width, size.height); // Bottom right point
//     path.lineTo(0, size.height); // Bottom left point