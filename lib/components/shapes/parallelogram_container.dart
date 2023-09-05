import 'package:bank_app/components/shapes/parallelogram_painter.dart';
import 'package:flutter/material.dart';

class Parallelogram extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(40, 40), // Define the size of your parallelogram
      painter: ParallelogramPainter(),
    );
  }
}