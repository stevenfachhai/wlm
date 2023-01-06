import 'package:flutter/cupertino.dart';
import 'package:wlm/song/song_titles.dart';

class TitlesScreenManager {
  final songListNotifier = ValueNotifier<List<String>>([]);
  String _language = 'mara';

  void search(String searchString) {
    if (_language == 'mara') {
      songListNotifier.value = maraSongTitles
          .where(
            (title) => _contains(title, searchString),
          )
          .toList();
    } else {
      songListNotifier.value = mizoSongTitles
          .where(
            (title) => _contains(title, searchString),
          )
          .toList();
    }
  }

  bool _contains(String title, String searchString) {
    return title.toLowerCase().contains(searchString.toLowerCase());
  }

  void loadSongs(String language) {
    _language = language;
    if (_language == 'mara') {
      songListNotifier.value = maraSongTitles;
    } else {
      songListNotifier.value = mizoSongTitles;
    }
  }
}
