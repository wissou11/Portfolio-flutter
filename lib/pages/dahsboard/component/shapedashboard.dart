import 'package:flutter/material.dart';

class ShapeDashboard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    // Create a custom path with smoother curves
    var path = Path();
    path.lineTo(0, height - 100); // Start near the bottom-left corner
    path.quadraticBezierTo(
      width / 4, height, // First control point
      width / 2, height - 50, // First endpoint
    );
    path.quadraticBezierTo(
      3 * width / 4, height - 100, // Second control point
      width, height - 80, // Second endpoint
    );
    path.lineTo(width, 0); // Connect to the top-right corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Always reclip when changes occur
    return true;
  }
}
