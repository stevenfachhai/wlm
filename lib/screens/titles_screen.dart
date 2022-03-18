import 'package:flutter/material.dart';
import '../song/song_titles.dart';
import 'lyrics_screen.dart';

class TitlesScreen extends StatelessWidget {
  const TitlesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: maraSongTitles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(maraSongTitles[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LyricsScreen(
                      songNumber: index + 1,
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