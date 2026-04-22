import 'package:shared_preferences/shared_preferences.dart';

class UserSettings {
  static const _keyFavorites = 'favorites';

  /// ✅ GET FAVORITES
  Future<List<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyFavorites) ?? [];
  }

  /// ✅ ADD FAVORITE
  Future<void> addFavorite(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_keyFavorites) ?? [];

    if (!favorites.contains(id)) {
      favorites.add(id);
      await prefs.setStringList(_keyFavorites, favorites);
    }
  }

  /// ✅ REMOVE FAVORITE
  Future<void> removeFavorite(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_keyFavorites) ?? [];

    favorites.remove(id);
    await prefs.setStringList(_keyFavorites, favorites);
  }

  /// ✅ 🔥 THIS IS THE IMPORTANT ONE
  Future<void> toggleFavorite(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList(_keyFavorites) ?? [];

    if (favorites.contains(id)) {
      favorites.remove(id);
    } else {
      favorites.add(id);
    }

    await prefs.setStringList(_keyFavorites, favorites);
  }
}
