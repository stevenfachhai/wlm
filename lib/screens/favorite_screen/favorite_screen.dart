import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../song_lyric.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<String> favorites = [];

  @override
  void initState() {
    super.initState();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favorites = prefs.getStringList('favorites') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: favorites.isEmpty
          ? const Center(child: Text("No favorites yet"))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final item = favorites[index];

                /// 🔥 SPLIT SAVED DATA
                final parts = item.split("|||");

                final title = parts[0];
                final lyrics = parts.length > 1 ? parts[1] : "";
                final youtubeLink = parts.length > 2 ? parts[2] : "";

                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    title: Text(
                      "${index + 1}. $title",
                      style: const TextStyle(fontSize: 18),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SongLyricScreen(
                            title: title,
                            lyrics: lyrics,
                            youtubeLink: youtubeLink,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
