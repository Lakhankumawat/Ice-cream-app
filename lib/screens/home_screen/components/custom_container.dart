import 'dart:ui';
import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(1, 128, 230, 231)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7800000, size.height * 0.7900000);

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 128, 220, 227)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.2075000, size.height * 0.3571429);
    path1.cubicTo(
        size.width * 0.2627083,
        size.height * 0.2839286,
        size.width * 0.6416667,
        size.height * 0.2800000,
        size.width * 0.7075000,
        size.height * 0.3585714);
    path1.cubicTo(
        size.width * 0.7216667,
        size.height * 0.4017857,
        size.width * 0.7333333,
        size.height * 0.7396429,
        size.width * 0.7058333,
        size.height * 0.7842857);
    path1.cubicTo(
        size.width * 0.6672917,
        size.height * 0.8442857,
        size.width * 0.2468750,
        size.height * 0.8457143,
        size.width * 0.2108333,
        size.height * 0.7885714);
    path1.cubicTo(
        size.width * 0.1793750,
        size.height * 0.7425000,
        size.width * 0.1914583,
        size.height * 0.4082143,
        size.width * 0.2075000,
        size.height * 0.3571429);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
