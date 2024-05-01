import 'package:flutter/material.dart';
import 'package:wlm/screens/lyrics_screen.dart'; // Import the LyricsScreen
import 'package:wlm/song/song.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Songs'),
      ),
      body: ListView.builder(
        itemCount: favoriteSongs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteSongs[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricsScreen(
                      song:
                          favoriteSongs[index]), // Pass the song as an argument
                ),
              );
            },
          );
        },
      ),
    );
  }
}

List<Song> favoriteSongs = []; // List to store favorite songs
