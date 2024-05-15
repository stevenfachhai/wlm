import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wlm/screens/lyrics_screen/lyrics_screen_manager.dart';
import 'package:wlm/song/song.dart';

class LyricsScreen extends StatefulWidget {
  final Song song;

  const LyricsScreen({Key? key, required this.song}) : super(key: key);

  @override
  _LyricsScreenState createState() => _LyricsScreenState();
}

class _LyricsScreenState extends State<LyricsScreen> {
  final manager = LyricsScreenManager();

  @override
  void initState() {
    super.initState();
    manager.init(widget.song.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ValueListenableBuilder<bool>(
              valueListenable: manager.favoriteNotifier,
              builder: (context, isFavorite, child) {
                return IconButton(
                  onPressed: () {
                    manager.toggleFavorite();
                  },
                  icon: isFavorite
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border),
                );
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.song.title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.song.lyrics,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Launch the song link
              launch(widget.song.link);
            },
            child: const Icon(
              Icons.play_circle_filled,
              color: Colors.red,
            ),
          ),
          const SizedBox(
              height: 16), // Adjust the vertical spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              // Navigate back to the home screen
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
