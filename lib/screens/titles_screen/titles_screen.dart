import 'package:flutter/material.dart';
import 'package:wlm/screens/titles_screen/titles_screen_manager.dart';
import '../lyrics_screen/lyrics_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlesScreen extends StatefulWidget {
  const TitlesScreen({Key? key, required this.language}) : super(key: key);

  final String language;

  @override
  State<TitlesScreen> createState() => _TitlesScreenState();
}

class _TitlesScreenState extends State<TitlesScreen> {
  final manager = TitlesScreenManager();

  @override
  void initState() {
    super.initState();
    manager.loadSongs(widget.language);
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
                valueListenable: manager.songListNotifier,
                builder: (context, songTitles, child) {
                  return ListView.builder(
                    itemCount: songTitles.length,
                    itemBuilder: (context, index) {
                      final title = songTitles[index];
                      return Card(
                        child: ListTile(
                          title: Text(
                            '${index + 1}. $title',
                            style: const TextStyle(fontSize: 17),
                          ),
                          onTap: () {
                            final song = manager.getSong(title);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LyricsScreen(
                                  song: song,
                                ),
                              ),
                            );
                          },
                        ),
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
