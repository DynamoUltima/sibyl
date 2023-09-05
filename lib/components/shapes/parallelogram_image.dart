import 'package:bank_app/components/shapes/parallelogram_clipper.dart';
import 'package:flutter/material.dart';

class ParallelogramImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParallelogramClipper(),
      child: Container(
        width: 70, // Adjust the size of your inverted parallelogram
        height: 50, // Adjust the size of your inverted parallelogram
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/profile-pic.jpg'), // Replace with your image path
            fit: BoxFit.cover, // Adjust how the image is displayed
          ),
        ),
      ),
    );
  }
}