import 'dart:ui';
import 'package:flutter/cupertino.dart';

//rgba(252, 206, 221, 1)
class RPSCustomPainter extends CustomPainter {
  final Color? canvasColor;
  RPSCustomPainter({this.canvasColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = canvasColor as Color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.70, size.height * 0.28);
    path0.cubicTo(size.width * 0.66, size.height * 0.19, size.width * 0.14,
        size.height * 0.19, size.width * 0.12, size.height * 0.28);
    path0.cubicTo(size.width * 0.08, size.height * 0.42, size.width * 0.08,
        size.height * 0.71, size.width * 0.12, size.height * 0.85);
    path0.cubicTo(size.width * 0.13, size.height * 0.94, size.width * 0.67,
        size.height * 0.95, size.width * 0.70, size.height * 0.86);
    path0.cubicTo(size.width * 0.72, size.height * 0.81, size.width * 0.73,
        size.height * 0.32, size.width * 0.70, size.height * 0.28);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
