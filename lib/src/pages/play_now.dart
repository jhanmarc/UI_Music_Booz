import 'dart:async';
import 'dart:math' as math;

import 'package:booz/src/models/music.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../utils/ColorsCustom.dart';

class PlayNowPage extends StatefulWidget {

  @override
  _PlayNowPageState createState() => _PlayNowPageState();
}

class _PlayNowPageState extends State<PlayNowPage> with SingleTickerProviderStateMixin {
  AnimationController playPauseController;
  Animation<double> rotation;

  double _timeBar = 100;
  double _timeMusic = 3.50*60;
  double _rest;
  Timer timer;
  double timeCircular;
  
  bool isSongPlay = false;
  bool icono = true;


  @override
  void initState() {
    super.initState();
    playPauseController = AnimationController(vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween( begin: 0.0, end: 2.0).animate(playPauseController);
  }

  playSon() {
    
    setState(() {
        _rest = 100/_timeMusic;
        if (isSongPlay) {
        playPauseController.stop();
        icono = true;
        timer.cancel();
      } else {
        playPauseController.repeat();  
        icono = false;
        timer = Timer.periodic(new Duration(seconds: 1), (timer) {
           setState(() {
              var desc = _timeBar-_rest;
              _timeBar = desc;
              if(_timeBar <= 0) _timeBar = 100;
           });
        });
      }
      isSongPlay = !isSongPlay;
    });
  }

  // timeSong(){
  //   Timer(new Duration(seconds: 1), () {
  //       debugPrint("Print after 1 seconds");
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    // final double mediaQueryW = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFF373C42),
        body: Column(
          children: <Widget>[_navBar(), _consolaReproductor(), _newMusic()],
        ));
  }

  Widget _navBar() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 10, left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'music'),
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFFA2A2A2),
                size: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("NOW PLAYING",
                style: TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.control_point,
                  color: Color(0xFFA2A2A2),
                  size: 20,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.search,
                  color: Color(0xFFA2A2A2),
                  size: 20,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.more_vert,
                  color: Color(0xFFA2A2A2),
                  size: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _consolaReproductor() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 440,
      width: double.maxFinite,
      child: Column(
        children: <Widget>[
          _discoRepro(),
          SizedBox(height: 20),
          _titulos(),
          SizedBox(height: 20),
          _controles()
        ],
      ),
    );
  }

  Widget _discoRepro() {
    return Container(
      child: Center(
          child: Column(
        children: <Widget>[
          Stack(
            //Centrar estar a un mismo centro
            alignment: Alignment(0, 0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 30, left: 9, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("0:00", style: TextStyle(color: ColorsCustom.Gris)),
                    Text("3:50", style: TextStyle(color: ColorsCustom.Gris))
                  ],
                ),
              ),
              Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: _progressCircle(),
              ),
              Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(220),
                    color: Colors.black),
              ),
              AnimatedBuilder(
                animation: playPauseController,                  
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/linkinPark.jpg'),
                      maxRadius: 100,
                    ),
                  ),
                  builder: (context, child)=> Transform.rotate(
                    child: child,
                    angle: playPauseController.value * 2.0 * math.pi,
                  )
              ),
              Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(170),
                    border: Border.all(color: Color(0xFFDA2581))),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(170),
                    color: Color(0xFFDA2581)),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(170),
                    color: Color(0xFF353B40)),
              ),
              Container(
                padding: EdgeInsets.only(top: 250, right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Icon(FontAwesomeIcons.random,
                          size: 15, color: Color(0xFFDA2581)),
                    ),
                    Icon(FontAwesomeIcons.redo,
                        size: 15, color: ColorsCustom.RosadoLigth)
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }

  Widget _progressCircle() {
    return SleekCircularSlider(
      min: 0,
      max: 100,
      initialValue: _timeBar,
      onChange: (value) {},
      onChangeEnd: (value) {},
      onChangeStart: (value) {},
      innerWidget: (value) => Container(),
      appearance: CircularSliderAppearance(
          startAngle: 360,
          angleRange: 180,
          customWidths: CustomSliderWidths(
            progressBarWidth: 4.0,
            trackWidth: 4.0,
            handlerSize: 5.0,
            shadowWidth: 5.0,
          )),
    );
  }

  Widget _titulos() {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Somewhere I Belong", style: TextStyle(fontSize: 17.0)),
          SizedBox(height: 10),
          Text(
            "Linkin Park",
            style: TextStyle(color: Color(0xFFA2A2A2)),
          )
        ],
      ),
    );
  }

  Widget _controles() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.backward,
                color: Color(0xFFA2A2A2), size: 17),
            onPressed: () {},
          ),
          IconButton(
            icon: icono ? Icon(FontAwesomeIcons.play, color: Color(0xFFA2A2A2), size: 28) : Icon(FontAwesomeIcons.pause, color: Color(0xFFA2A2A2), size: 28),
            onPressed: () => playSon(),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.forward,
                color: Color(0xFFA2A2A2), size: 17),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _newMusic() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 20.0, left: 30.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("UP NEXT",
                  style: TextStyle(
                      color: Color(0xFFA2A2A2), fontSize: 13, letterSpacing: 2)),
              SizedBox(height: 5),
              Divider(height: 2),
              Expanded(child:_listNewMusic())
            ],
          ),
        ),
      ),
    );
  }

  Widget _listNewMusic() {
    return Container(
      height: 140,
      child: ListView.builder(
        itemCount: listNext.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 29,
                      backgroundImage: AssetImage(listNext[index].imageUrl),
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            width: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(listNext[index].cancion,
                                    style: TextStyle(
                                        fontSize: 15, letterSpacing: 0.5)),
                                Text(
                                    '${listNext[index].artista} • ${listNext[index].tiempo}',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFFA2A2A2),
                                        letterSpacing: 0.8)),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(width: 42),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.play, size: 20),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget itemMusic(){
    
  }
}
