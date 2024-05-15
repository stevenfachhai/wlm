import 'package:flutter/material.dart';
import 'package:wlm/services/get_it.dart';
import 'package:wlm/services/user_setting.dart';
import 'package:wlm/song/song.dart';
import 'package:wlm/song/song_info.dart';

class FavoriteScreenManager {
  final favoritesNotifier = ValueNotifier<List<String>>([]);
  List<String> favorites = [];

  void search(String searchString) {
    favoritesNotifier.value = favorites
        .where(
          (title) => _contains(title, searchString),
        )
        .toList();
  }

  bool _contains(String title, String searchString) {
    return title.toLowerCase().contains(searchString.toLowerCase());
  }

  Future<void> loadFavorites() async {
    final settings = getIt<UserSettings>();
    final favorites = await settings.getFavorites();
    favoritesNotifier.value = favorites;
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
