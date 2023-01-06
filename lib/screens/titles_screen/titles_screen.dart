import 'package:flutter/material.dart';
import 'package:wlm/screens/titles_screen/titles_screen_manager.dart';
import '../../song/song_titles.dart';
import '../lyrics_screen.dart';

class TitlesScreen extends StatefulWidget {
  TitlesScreen({Key? key, required this.language}) : super(key: key) {}

  late List<String> songTitles;
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
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (searchString) {
              manager.search(searchString);
            },
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'search',
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade200, //<-- SEE HERE
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<List<String>>(
                valueListenable: manager.songListNotifier,
                builder: (context, songTitles, child) {
                  return ListView.builder(
                    itemCount: songTitles.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            songTitles[index],
                            style: TextStyle(fontSize: 17),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LyricsScreen(
                                  songNumber: index + 1,
                                  language: widget.language,
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
    );
  }
}
