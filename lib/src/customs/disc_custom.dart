import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:flutter/material.dart';

class DiscCuston extends StatelessWidget {
  const DiscCuston({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child:CustomPaint(
          painter: _Disc2Painter(),
      ),
    );
  }
}

class _Disc2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    final lapiz1 = new Paint();
    final lapiz2 = new Paint();
    lapiz.color = Colors.black;
    lapiz1.color = ColorsCustom.Rosado;
    lapiz2.color = Colors.black;
    lapiz.style = PaintingStyle.fill;
    lapiz1.style = PaintingStyle.fill;
    lapiz2.style = PaintingStyle.fill;

    Offset dist = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist, 25, lapiz);

    Offset dist1 = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist1, 13, lapiz1);

    Offset dist2 = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist2, 3, lapiz2);

  }

  @override
  bool shouldRepaint(_Disc2Painter oldDelegate) => true;
}
