import 'package:flutter/material.dart';
import 'package:wlm/services/get_it.dart';
import 'package:wlm/services/user_setting.dart';

class FavoriteScreenManager {
  final favoritesNotifier = ValueNotifier<List<String>>([]);
  List<String> _allFavorites = [];

  void search(String searchString) {
    favoritesNotifier.value = _allFavorites
        .where((id) => id.toLowerCase().contains(searchString.toLowerCase()))
        .toList();
  }

  Future<void> loadFavorites() async {
    final settings = getIt<UserSettings>();
    _allFavorites = await settings.getFavorites();
    favoritesNotifier.value = _allFavorites;
  }
}
