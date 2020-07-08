import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:flutter/material.dart';

class DiscCuston extends StatelessWidget {
  const DiscCuston({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      child: Stack(
        children: <Widget>[
          CustomPaint(
            painter: _Disc1Painter(),
          ),
          CustomPaint(
            painter: _Disc2Painter(),
          ),
          CustomPaint(
            painter: _Disc3Painter(),
          )
        ],
    ));
  }
}

class _Disc1Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    lapiz.color = Colors.black;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    Offset dist = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist, 25, lapiz);
  }

  @override
  bool shouldRepaint(_Disc1Painter oldDelegate) => true;
}

class _Disc2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = ColorsCustom.Rosado;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    Offset dist = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist, 13, lapiz);
  }

  @override
  bool shouldRepaint(_Disc2Painter oldDelegate) => true;
}

class _Disc3Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();
    lapiz.color = Colors.black;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 5;

    Offset dist = Offset(size.width / 4, size.height / 2);
    canvas.drawCircle(dist, 3, lapiz);
  }

  @override
  bool shouldRepaint(_Disc3Painter oldDelegate) => true;
}
