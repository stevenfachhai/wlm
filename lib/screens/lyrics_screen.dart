import 'package:flutter/material.dart';
import 'package:wlm/song/song_lyric.dart';

 

class LyricsScreen extends StatelessWidget {
  LyricsScreen({ Key? key, required this.songNumber }) : super(key: key);

  final int songNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        child: Text(
         maraLyrics[songNumber] ?? '',
        ),
      ),
    );

  }
}








