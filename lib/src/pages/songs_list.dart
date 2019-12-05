import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:flutter/material.dart';

class SongsListPage extends StatefulWidget {

  @override
  _SongsListPageState createState() => _SongsListPageState();
}

class _SongsListPageState extends State<SongsListPage> {

  
  @override
  Widget build(BuildContext context) {
    final double mediaQueryH = MediaQuery.of(context).size.height;
    final double mediaQueryW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsCustom.BlueBlackBackground,
      body: Column(
        children: <Widget>[
          Container(
            height: mediaQueryH / 6,
            width: mediaQueryW,
            color: ColorsCustom.Celeste,
          ),
          Container(
            height: mediaQueryH / 1.45,
            width: mediaQueryW,
            color: ColorsCustom.Rosado,
          ),
          Container(
            height: mediaQueryH / 7,
            width: mediaQueryW,
            color: ColorsCustom.Rosaligh,
          ),
        ],
      ),
    );
  }
}