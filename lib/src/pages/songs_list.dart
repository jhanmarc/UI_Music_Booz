import 'package:booz/src/customs/disc_custom.dart';
import 'package:booz/src/models/music.dart';
import 'package:booz/src/utils/ColorsCustom.dart';
import 'package:booz/src/widgets/icons_widgets.dart';
import 'package:flutter/material.dart';

class SongsListPage extends StatefulWidget {
  @override
  _SongsListPageState createState() => _SongsListPageState();
}

class _SongsListPageState extends State<SongsListPage> {
  int _selectedIndex = 0;
  String title = 'Musica';
  List<String> _options = [
      "Música",
      "Artista",
      "Album",
      "Genero",
      "PlayList",
  ];

    Widget _builOption(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
            title = _options[index];
          });
        },
        child: Text(
          _options[index],
          style: TextStyle(
              color: _selectedIndex == index ? Colors.white.withOpacity(0.85): Colors.white.withOpacity(0.65),
              fontFamily: 'Poppins',
              fontSize: _selectedIndex == index ? 15 : 14,
              fontWeight: _selectedIndex == index ? FontWeight.w600 : FontWeight.normal
          ),
          // style: _selectedIndex == index ? styleSelect : styleSubTitle,
        ),
      );
    }



  @override
  Widget build(BuildContext context) {
    final stylelogo = TextStyle(
        color: Color(0xFFA2A2A2),
        fontFamily: 'Poppins',
        fontSize: 18.0,
        letterSpacing: 2.5);
    final styleTitle = TextStyle(
        fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 35.0);
      
    
    

    final double mediaQueryH = MediaQuery.of(context).size.height;
    final double mediaQueryW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsCustom.BlueBlackBackground,
      body: Column(
        children: <Widget>[
          Container(
            height: mediaQueryH * 0.13,
            width: mediaQueryW,
            child: Container(
              color: ColorsCustom.BlueBlackCont,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    iconsBar(context, Icons.menu, 'play'),
                    Text("Booz", style: stylelogo),
                    Container(
                      child: Row(
                        children: <Widget>[
                          iconsBar(context, Icons.search, 'search'),
                          iconsBar(context, Icons.more_vert, 'play'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: ColorsCustom.BlueBlackCont,
                    height: 55,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(title, style: styleTitle),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: mediaQueryW,
                        color: ColorsCustom.Rosado,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: _options
                                  .asMap()
                                  .entries
                                  .map((MapEntry map) => _builOption(map.key))
                                  .toList()),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            height: mediaQueryH * 0.6,
                            width: mediaQueryW * 0.9,
                            color: ColorsCustom.BlueBlackCont,
                            child: _listNewMusic()
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: mediaQueryH * 0.13,
            decoration: BoxDecoration(
              color: ColorsCustom.BlueBlackCont,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 2.0),
                  spreadRadius: 1
                )
              ],
              
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                iconsBar(context, Icons.menu, 'music'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _listNewMusic(){
    return ListView.builder(
        itemCount: listNext.length,
        itemBuilder: (BuildContext context, int index) {

          return _itemMusic(listNext[index]);
          // return Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.only(bottom: 18),
          //       child: Row(
          //         children: <Widget>[
          //           // CircleAvatar(
          //           //   radius: 29,
          //           //   backgroundImage: AssetImage(listNext[index].imageUrl),
          //           // ),

          //           // DiscCuston(),
          //           _itemMusic()
          //           // SizedBox(width: 18),
          //           // Column(
          //           //   crossAxisAlignment: CrossAxisAlignment.start,
          //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           //   children: <Widget>[
          //           //     Container(
          //           //         width: 140,
          //           //         child: Column(
          //           //           crossAxisAlignment: CrossAxisAlignment.start,
          //           //           children: <Widget>[
          //           //             Text(listNext[index].cancion,
          //           //                 style: TextStyle(
          //           //                     fontSize: 15, letterSpacing: 0.5)),
          //           //             Text(
          //           //                 '${listNext[index].artista} • ${listNext[index].tiempo}',
          //           //                 style: TextStyle(
          //           //                     fontSize: 13,
          //           //                     color: Color(0xFFA2A2A2),
          //           //                     letterSpacing: 0.8)),
          //           //           ],
          //           //         ))
          //           //   ],
          //           // ),
          //           // SizedBox(width: 42),
          //           // IconButton(
          //           //   icon: Icon(FontAwesomeIcons.play, size: 20),
          //           //   onPressed: () {},
          //           // )
          //         ],
          //       ),
          //     )
          //   ],
          // );
        },
      );
  }

  Widget _itemMusic(listNext){

    final styleTitleSong = TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 13.0);
    final styleArtista = TextStyle(fontFamily: 'Poppins', fontSize: 11.0);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 65,
        // color: ColorsCustom.RosadoLigth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: DiscCuston(),
            ),
            SizedBox(width: 5),
            Container(
              width: 230,
              // color: ColorsCustom.Gris,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                      width: 220,
                      child: Text('${listNext.cancion}', style: styleTitleSong, maxLines: 1),
                    ),
                    // SizedBox(height: 2),
                    Container(
                      width: 180,
                      child: Text('${listNext.artista} - ${listNext.tiempo} ', style: styleArtista, maxLines: 1),
                    )
                ],
              ),
            ),
            iconsBar(context, Icons.more_vert, 'play'),
          ],
        ),
      ),
    );
  }
}


