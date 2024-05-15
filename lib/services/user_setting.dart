import 'package:shared_preferences/shared_preferences.dart';

class UserSettings {
  static const _keyFavorites = 'favorites';

  Future<List<String>> getFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyFavorites) ?? [];
  }

  Future<void> saveFavorite(String songId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favorites = await getFavorites();
    if (!favorites.contains(songId)) {
      favorites.add(songId);
      await prefs.setStringList(_keyFavorites, favorites);
    }
  }

  Future<void> removeFavorite(String songId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favorites = await getFavorites();
    favorites.remove(songId);
    await prefs.setStringList(_keyFavorites, favorites);
  }
}
