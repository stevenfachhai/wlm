import 'package:flutter/cupertino.dart';
import 'package:wlm/screens/lyrics_screen/lyrics_screen.dart';
import 'package:wlm/song/song.dart';
import 'package:wlm/song/song_info.dart';

class TitlesScreenManager {
  final songListNotifier = ValueNotifier<List<String>>([]);
  List<String> _songTitles = [];

  void search(String searchString) {
    songListNotifier.value = _songTitles
        .where(
          (title) => _contains(title, searchString),
        )
        .toList();
  }

  bool _contains(String title, String searchString) {
    return title.toLowerCase().contains(searchString.toLowerCase());
  }

  void loadSongs(String language) {
    _songTitles = songInfo
        .where((song) => song['language'] == language)
        .map((song) => song['title']!)
        .toList();
    songListNotifier.value = _songTitles;
  }

  Song getSong(String title) {
    final songDetails = songInfo.firstWhere((song) => song['title'] == title);
    return Song(
      id: songDetails['id']!,
      title: songDetails['title']!,
      lyrics: songDetails['lyrics']!,
      link: songDetails['link']!,
    );
  }
}
