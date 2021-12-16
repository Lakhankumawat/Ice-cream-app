import 'dart:ui';
import 'package:flutter/cupertino.dart';

class CustomButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.45, size.height * 0.35);
    path0.cubicTo(size.width * 0.33, size.height * 0.53, size.width * 0.38,
        size.height * 0.68, size.width * 0.40, size.height * 0.72);
    path0.quadraticBezierTo(size.width * 0.45, size.height * 0.79,
        size.width * 0.58, size.height * 0.70);
    path0.quadraticBezierTo(size.width * 0.56, size.height * 0.35,
        size.width * 0.45, size.height * 0.35);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
