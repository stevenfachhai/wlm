import 'package:flutter/cupertino.dart';
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

  Map<String, String> getSong(String title) {
    return songInfo.where((song) => song['title'] == title).first;
  }
}
