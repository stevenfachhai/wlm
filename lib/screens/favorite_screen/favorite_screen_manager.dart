import 'package:flutter/material.dart';
import 'package:wlm/services/get_it.dart';
import 'package:wlm/services/user_setting.dart';
import 'package:wlm/song/song.dart';
import 'package:wlm/song/song_info.dart';

class FavoriteScreenManager {
  final favoritesNotifier = ValueNotifier<List<String>>([]);

  Future<void> loadFavorites() async {
    final settings = getIt<UserSettings>();
    final favorites = await settings.getFavorites();
    favoritesNotifier.value = favorites;
  }
}
