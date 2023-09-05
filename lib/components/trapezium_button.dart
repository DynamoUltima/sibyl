import 'package:bank_app/components/trapezium_button_painter.dart';
import 'package:flutter/material.dart';

class TrapezoidButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  TrapezoidButton({
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Colors.yellow,),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

