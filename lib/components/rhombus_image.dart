// ignore_for_file: prefer_const_constructors

import 'package:bank_app/components/rhombus_clipper.dart';
import 'package:flutter/material.dart';

class RhombusImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RhombusClipper(),
      child: Container(
        width: 200, // Adjust the size of your rhombus
        height: 200, // Adjust the size of your rhombus
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


