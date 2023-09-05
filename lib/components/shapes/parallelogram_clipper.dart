import 'package:flutter/material.dart';

class ParallelogramClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width * 0.25, 0) // Start at the top-left corner
      ..lineTo(size.width, 0) // Move right to create the top side
      ..lineTo(size.width * 0.75, size.height) // Move to the bottom-right corner
      ..lineTo(0, size.height) // Move left to create the bottom side
      ..close(); // Close the path to complete the inverted parallelogram

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}




