import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wlm/screens/favourite_screen.dart';
import 'package:wlm/song/song.dart';

class LyricsScreen extends StatefulWidget {
  final Song song;

  const LyricsScreen({Key? key, required this.song}) : super(key: key);

  @override
  _LyricsScreenState createState() => _LyricsScreenState();
}

class _LyricsScreenState extends State<LyricsScreen> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    // Check if the song is already in the list of favorites
    _isFavorite = favoriteSongs.contains(widget.song);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
                if (_isFavorite) {
                  favoriteSongs.add(widget.song);
                } else {
                  favoriteSongs.remove(widget.song);
                }
              });
            },
            icon: _isFavorite
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.song.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.song.lyrics,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launch(widget.song.link);
        },
        child: Icon(
          Icons.play_circle_filled,
          color: Colors.red,
        ),
      ),
    );
  }
}
