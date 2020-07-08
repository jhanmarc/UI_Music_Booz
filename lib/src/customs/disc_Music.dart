import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:flutter/material.dart';

class DiscMusic extends StatelessWidget {
  const DiscMusic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child:CustomPaint(
            painter: _DiscPainter(),
      )
    );
  }
}

class _DiscPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final lapiz = new Paint();
    final lapiz1 = new Paint();
    final lapiz2 = new Paint();
    lapiz.color = Colors.black;
    lapiz1.color = ColorsCustom.Celeste;
    lapiz2.color = ColorsCustom.Rosado;
    lapiz.style = PaintingStyle.fill;
    lapiz1.style = PaintingStyle.fill;
    lapiz2.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    Offset dist = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist, 50, lapiz);

    Offset dist1 = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist1, 45, lapiz1);

    Offset dist2 = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist2, 15, lapiz2);
  }

  @override
  bool shouldRepaint(_DiscPainter oldDelegate) => true;
}