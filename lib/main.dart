// import 'package:booz/src/pages/home_page.dart';
import 'package:booz/src/pages/songs_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: 'home',
      title: 'Flutter Demo',
      routes: {
        'home' :  (BuildContext context) => SongsListPage()
      },
      
    );
  }
}

