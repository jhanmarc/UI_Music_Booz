// import 'package:booz/src/pages/home_page.dart';
import 'package:booz/src/pages/home_page.dart';
import 'package:booz/src/pages/songs_list.dart';
import 'package:flutter/material.dart';

import 'src/pages/play_now.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'play',
      title: 'Flutter Demo',
      routes: {
        'home' :  (BuildContext context) => HomePage(),
        'music' :  (BuildContext context) => SongsListPage(),
        'play' :  (BuildContext context) => PlayNowPage()
      },
      
    );
  }
}

