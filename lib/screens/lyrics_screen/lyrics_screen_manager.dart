import 'package:flutter/material.dart';
import 'package:wlm/services/get_it.dart';
import 'package:wlm/services/user_setting.dart';

class LyricsScreenManager {
  final favoriteNotifier = ValueNotifier(false);
  bool _isFavorite = false;
  late String _songId;

  Future<void> init(String id) async {
    _songId = id;
    final settings = getIt<UserSettings>();
    final favorites = await settings.getFavorites();
    final isFavorite = favorites.contains(id);
    _isFavorite = isFavorite;
    favoriteNotifier.value = isFavorite;
  }

  Future<void> toggleFavorite() async {
    final settings = getIt<UserSettings>();
    if (_isFavorite) {
      settings.removeFavorite(_songId);
    } else {
      settings.saveFavorite(_songId);
    }
    _isFavorite = !_isFavorite;
    favoriteNotifier.value = _isFavorite;
  }
}
