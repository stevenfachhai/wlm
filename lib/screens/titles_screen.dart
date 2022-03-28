import 'package:flutter/material.dart';
import '../song/song_titles.dart';
import 'lyrics_screen.dart';

class TitlesScreen extends StatelessWidget {
  TitlesScreen({Key? key, required this.language}) : super(key: key) {
    if (language == 'mara') {
      songTitles = maraSongTitles;
    } else {
      songTitles = mizoSongTitles;
    }
  }

  late List<String> songTitles;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: songTitles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(songTitles[index],
              style: TextStyle(fontSize: 17),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LyricsScreen(
                      songNumber: index + 1,
                      language: language,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
