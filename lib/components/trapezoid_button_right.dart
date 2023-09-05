import 'package:bank_app/components/trapezoid_clipper_right.dart';
import 'package:flutter/material.dart';

class TrapezoidRightButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  TrapezoidRightButton({
    required this.width,
    required this.height,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TrapezoidRightClipper(),
      child: Material(
        color: color,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}