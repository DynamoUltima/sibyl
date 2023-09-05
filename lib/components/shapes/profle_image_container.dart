// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../trapezium_button_painter.dart';

class ProfileImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  const ProfileImageContainer({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidClipper(),
      child: Material(
        color: color,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/profile-pic.jpg'), // Replace with your image path
                fit: BoxFit.cover, // Adjust how the image is displayed
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
