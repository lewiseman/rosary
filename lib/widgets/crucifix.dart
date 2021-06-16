import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Crucifix extends StatelessWidget {
  const Crucifix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 200,
      child: CustomPaint(
        size: Size(400, 200),
        painter: CrucifixPainter(),
      ),
    );
  }
}

class CrucifixPainter extends CustomPainter {
  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    Paint crucifix = Paint();
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTRB(
          size.width / 2 - 5,
          size.height - 30,
          size.width / 2 + 5,
          size.height,
        ),
        Radius.circular(3),
      ),
      crucifix,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTRB(
          size.width / 2 - 10,
          size.height - 20,
          size.width / 2 + 10,
          size.height - 10,
        ),
        Radius.circular(3),
      ),
      crucifix,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
