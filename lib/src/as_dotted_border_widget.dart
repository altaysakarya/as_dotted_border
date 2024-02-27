import 'package:as_dotted_border/painters/as_dotted_border_painter.dart';
import 'package:flutter/material.dart';

class ASDottedBorderWidget extends StatelessWidget {
  final Color color;
  final double strokeWidth;
  final double dotRadius;
  final double dotSpacing;
  final double borderRadius;
  final Widget child;

  const ASDottedBorderWidget({
    super.key,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.dotRadius = 3.0,
    this.dotSpacing = 5.0,
    this.borderRadius = 0.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ASDottedBorderPainter(
        color: color,
        strokeWidth: strokeWidth,
        dotRadius: dotRadius,
        dotSpacing: dotSpacing,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
