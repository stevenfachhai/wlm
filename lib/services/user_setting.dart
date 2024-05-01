import 'package:shared_preferences/shared_preferences.dart';

class UserSettings {
  static const _keyFavourites = 'favourites';

  Future<List<String>> getFavourites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_keyFavourites) ?? [];
  }

  Future<void> saveFavourite(String songId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favourites = await getFavourites();
    if (!favourites.contains(songId)) {
      favourites.add(songId);
      await prefs.setStringList(_keyFavourites, favourites);
    }
  }

  Future<void> removeFavourite(String songId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favourites = await getFavourites();
    favourites.remove(songId);
    await prefs.setStringList(_keyFavourites, favourites);
  }
}
