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
    path0.moveTo(size.width * 0.7072833, size.height * 0.2822857);
    path0.cubicTo(
        size.width * 0.6641000,
        size.height * 0.1923429,
        size.width * 0.1400500,
        size.height * 0.1981571,
        size.width * 0.1278500,
        size.height * 0.2842000);
    path0.cubicTo(
        size.width * 0.0879667,
        size.height * 0.4212143,
        size.width * 0.0844667,
        size.height * 0.7128429,
        size.width * 0.1250083,
        size.height * 0.8576286);
    path0.cubicTo(
        size.width * 0.1358417,
        size.height * 0.9497714,
        size.width * 0.6741750,
        size.height * 0.9526143,
        size.width * 0.7061250,
        size.height * 0.8604714);
    path0.cubicTo(
        size.width * 0.7291250,
        size.height * 0.8109286,
        size.width * 0.7308417,
        size.height * 0.3283571,
        size.width * 0.7072833,
        size.height * 0.2822857);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
