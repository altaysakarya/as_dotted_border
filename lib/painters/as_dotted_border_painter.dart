import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ASDottedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dotRadius;
  final double dotSpacing;
  final double borderRadius;

  ASDottedBorderPainter({
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.dotRadius = 3.0,
    this.dotSpacing = 5.0,
    this.borderRadius = 0.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    var path = Path();
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    if (borderRadius > 0) {
      path.addRRect(RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)));
    } else {
      path.addRect(rect);
    }

    Path dashPath = Path();
    double distance = 0.0;
    for (ui.PathMetric pathMetric in path.computeMetrics()) {
      while (distance < pathMetric.length) {
        dashPath.addPath(pathMetric.extractPath(distance, distance + dotRadius), Offset.zero);
        distance += dotRadius + dotSpacing;
      }
    }

    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
