import 'package:flutter/cupertino.dart';
import 'package:wlm/song/song_info.dart';
import 'package:wlm/song/song_titles.dart';

class TitlesScreenManager {
  final songListNotifier = ValueNotifier<List<String>>([]);
  String _language = 'mara';
  List<String> _songTitles = [];

  void search(String searchString) {
    songListNotifier.value = _songTitles
        .where(
          (title) => _contains(title, searchString),
        )
        .toList();
    // if (_language == 'mara') {
    //   songListNotifier.value = maraSongTitles
    //       .where(
    //         (title) => _contains(title, searchString),
    //       )
    //       .toList();
    // } else if (_language == 'mizo') {
    //   songListNotifier.value = mizoSongTitles
    //       .where(
    //         (title) => _contains(title, searchString),
    //       )
    //       .toList();
    // } else {
    //   songListNotifier.value = danceSongTitles
    //       .where(
    //         (title) => _contains(title, searchString),
    //       )
    //       .toList();
    // }
  }

  bool _contains(String title, String searchString) {
    return title.toLowerCase().contains(searchString.toLowerCase());
  }

  void loadSongs(String language) {
    _language = language;
    _songTitles = songInfo
        .where((song) => song['language'] == language)
        .map((song) => song['title']!)
        .toList();
    songListNotifier.value = _songTitles;
    // if (_language == 'mara') {
    //   songListNotifier.value = maraSongTitles;
    // } else if (_language == 'mizo') {
    //   songListNotifier.value = mizoSongTitles;
    // } else {
    //   songListNotifier.value = danceSongTitles;
    // }
  }

  Map<String, String> getSong(String title) {
    return songInfo.where((song) => song['title'] == title).first;
  }
}
