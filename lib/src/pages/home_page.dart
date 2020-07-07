
import 'package:flutter/material.dart';
// import 'package:audio_picker/audio_picker.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // SongData songData;

  @override
  void initState() {
    super.initState();
    openAudioPicker();
  }

  @override
  void dispose() {
    super.dispose();
    // songData.audioPlayer.stop();
  }

  void openAudioPicker() async {
    // showLoading();
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(),
    );
  }
}