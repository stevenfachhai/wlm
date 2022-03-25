import 'package:flutter/material.dart';
import 'package:wlm/song/song_lyric.dart';

 

class LyricsScreen extends StatelessWidget {
  LyricsScreen({ Key? key, required this.songNumber, required this.language}) : super(key: key);

  final int songNumber;
  final String language;
  @override
  Widget build(BuildContext context) {
    var lyrics = '';
    if (language== 'mara'){
      lyrics=maraLyrics[songNumber] ?? '';
    }else {
      lyrics=mizoLyrics[songNumber] ?? '';
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container (
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
          lyrics,
          style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );

  }
}

