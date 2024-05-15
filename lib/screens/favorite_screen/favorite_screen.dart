import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        backgroundColor: Color.fromARGB(255, 232, 232, 226),
        title: Text(
          'Worship Lyrics Mara&Mizo',
          style: GoogleFonts.libreBaskerville(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (searchString) {
              manager.search(searchString);
            },
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'search',
              suffixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade200,
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<List<String>>(
                valueListenable: manager.favoritesNotifier,
                builder: (context, favoriteSongs, child) {
                  return ListView.builder(
                    itemCount: favoriteSongs.length,
                    itemBuilder: (context, index) {
                      final id = favoriteSongs[index];
                      final song = getSongFromId(id);
                      return ListTile(
                        title: Text(
                          '${index + 1}. ${song.title}',
                          style: const TextStyle(fontSize: 17),
                        ),
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}
