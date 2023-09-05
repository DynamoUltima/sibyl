import 'package:flutter/material.dart';

class ParallelogramPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow.shade800 // Set the fill color
      ..style = PaintingStyle.fill;

    final path = Path()
       ..moveTo(size.width * 0.25, 0) // Start at the top-left corner
      ..lineTo(size.width, 0) // Move right to create the top side
      ..lineTo(size.width * 0.75, size.height) // Move to the bottom-right corner
      ..lineTo(0, size.height)
      ..close(); // Close the path to complete the parallelogram

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}






// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Parallelogram Example'),
//       ),
//       body: Center(
//         child: Parallelogram(),
//       ),
//     ),
//   ));
// }
