import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:booz/src/widgets/icons_widgets.dart';
import 'package:flutter/material.dart';

class SongsListPage extends StatefulWidget {
  @override
  _SongsListPageState createState() => _SongsListPageState();
}

class _SongsListPageState extends State<SongsListPage> {
  @override
  Widget build(BuildContext context) {
    final stylelogo = TextStyle(
        color: Color(0xFFA2A2A2),
        fontFamily: 'Poppins',
        fontSize: 20.0,
        letterSpacing: 2.5);
    final styleTitle = TextStyle(
        fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 40.0);
    final styleSubTitle = TextStyle(color: Colors.white.withOpacity(0.7) ,fontFamily: 'Poppins', fontSize: 15.0);

    final double mediaQueryH = MediaQuery.of(context).size.height;
    final double mediaQueryW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsCustom.BlueBlackBackground,
      body: Column(
        children: <Widget>[
          Container(
            height: mediaQueryH / 7,
            width: mediaQueryW,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    iconsBar(context, Icons.menu, 'play'),
                    Text("BooZ", style: stylelogo),
                    Container(
                      child: Row(
                        children: <Widget>[
                          iconsBar(context ,Icons.search, 'search'),
                          iconsBar(context, Icons.more_vert, 'play'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: mediaQueryH / 1.167,
            color: ColorsCustom.BlueBlackBackground,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Musica', style: styleTitle),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: mediaQueryW,
                      color: ColorsCustom.Rosado,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("Music", style: styleSubTitle),
                            Text("Artista", style: styleSubTitle),
                            Text("Album", style: styleSubTitle),
                            Text("Genero", style: styleSubTitle),
                            Text("PlayList", style: styleSubTitle),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Container(
                          height: mediaQueryH / 1.61,
                          width: mediaQueryH / 2.5,
                          color: ColorsCustom.BlueBlackCont,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 510,
                      child: Container(
                        height: 100,
                        width: mediaQueryW,
                        color: ColorsCustom.BlueBlackBar,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            iconsBar(context, Icons.menu,'music'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
