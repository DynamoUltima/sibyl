import 'package:flutter/material.dart';

class RhombusClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, size.height / 2)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class RhombusImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: RhombusClipper(),
//       child: Container(
//         width: 200, // Adjust the size of your rhombus
//         height: 200, // Adjust the size of your rhombus
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/profile-pic.jpg'), // Replace with your image path
//             fit: BoxFit.cover, // Adjust how the image is displayed
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Rhombus Image Example'),
//       ),
//       body: Center(
//         child: RhombusImage(),
//       ),
//     ),
//   ));
// }
