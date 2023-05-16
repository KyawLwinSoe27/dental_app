import 'dart:math';

import 'package:flutter/material.dart';

class CircleView extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.stroke
    ..strokeWidth = 30;

    Paint midCircle = Paint()
      ..color = Color.fromRGBO(28, 94, 186, 1.0)
      ..style = PaintingStyle.fill;

    Paint innerCircle = Paint()
      ..color = Color.fromRGBO(19, 75, 157, 1.0)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, outerCircle);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, midCircle);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 4, innerCircle);

    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final Paint paint = Paint()..color = Colors.white;
    final double filledCircleRadius = 3;
    final int numberOfDots = 15;
    final double radiantStep = 2 * pi / numberOfDots;
    for (int i = 0; i < numberOfDots; i++) {
      canvas.drawCircle(
        Offset(centerX + sin(i * radiantStep) * size.width / 2.5,
            centerY + cos(i * radiantStep) * size.width / 2.5),
        filledCircleRadius,
        paint,
      );
    }
    Paint linePaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.fill
    ..strokeWidth = 5;
    canvas.drawLine(Offset(230, 90), Offset(290, 90), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}