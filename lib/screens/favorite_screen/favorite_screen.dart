import 'package:flutter/material.dart';
import 'package:wlm/screens/favorite_screen/favorite_screen_manager.dart';
import 'package:wlm/screens/lyrics_screen/lyrics_screen.dart';
import 'package:wlm/song/song.dart';
import 'package:wlm/song/song_info.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final manager = FavoriteScreenManager();

  @override
  void initState() {
    super.initState();
    manager.loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Songs'),
      ),
      body: ValueListenableBuilder<List<String>>(
          valueListenable: manager.favoritesNotifier,
          builder: (context, favoriteSongs, child) {
            return ListView.builder(
              itemCount: favoriteSongs.length,
              itemBuilder: (context, index) {
                final id = favoriteSongs[index];
                final song = getSongFromId(id);
                return ListTile(
                  title: Text(song.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LyricsScreen(song: song),
                      ),
                    );
                  },
                );
              },
            );
          }),
    );
  }
}
