import 'package:bank_app/components/shapes/rhombus_painter.dart';
import 'package:flutter/material.dart';

class Rhombus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(100, 100), // Define the size of your rhombus
      painter: RhombusPainter(),
      
    );
  }
}