import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class SongLyricScreen extends StatefulWidget {
  final String title;
  final String lyrics;
  final String youtubeLink;

  const SongLyricScreen({
    super.key,
    required this.title,
    required this.lyrics,
    required this.youtubeLink,
  });

  @override
  State<SongLyricScreen> createState() => _SongLyricScreenState();
}

class _SongLyricScreenState extends State<SongLyricScreen> {
  bool isFavorite = false;
  double fontSize = 16;

  @override
  void initState() {
    super.initState();
    loadFavorite();
  }

  /// ❤️ LOAD FAVORITE
  Future<void> loadFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    final songData =
        "${widget.title}|||${widget.lyrics}|||${widget.youtubeLink}";

    setState(() {
      isFavorite = favorites.contains(songData);
    });
  }

  /// ❤️ TOGGLE FAVORITE
  Future<void> toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    final songData =
        "${widget.title}|||${widget.lyrics}|||${widget.youtubeLink}";

    if (favorites.contains(songData)) {
      favorites.remove(songData);
    } else {
      favorites.add(songData);
    }

    await prefs.setStringList('favorites', favorites);

    setState(() {
      isFavorite = !isFavorite;
    });
  }

  /// 🔴 OPEN YOUTUBE
  Future<void> openYoutube() async {
    if (widget.youtubeLink.isEmpty) return;

    final url = Uri.parse(widget.youtubeLink);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  /// 🎶 BUILD LYRICS
  Widget buildLyrics(String lyrics) {
    final lines = lyrics.split('\n');

    bool isHighlight = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lines.map((line) {
        if (line.contains("[chorus]") || line.contains("[bridge]")) {
          isHighlight = true;
          return const SizedBox();
        }

        if (line.contains("[/chorus]") || line.contains("[/bridge]")) {
          isHighlight = false;
          return const SizedBox();
        }

        final cleanLine = line.trim();

        return Padding(
          padding: isHighlight
              ? const EdgeInsets.symmetric(vertical: 4, horizontal: 40)
              : const EdgeInsets.symmetric(vertical: 2),
          child: Text(
            cleanLine,
            textAlign: isHighlight ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: isHighlight ? fontSize + 2 : fontSize,
              height: 1.6,
              fontWeight: isHighlight ? FontWeight.w600 : FontWeight.normal,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE7F6),

      /// 🔝 APPBAR (ONLY BACK + ACTIONS)
      appBar: AppBar(
        backgroundColor: const Color(0xFFEDE7F6),
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          /// 🔠 FONT SIZE -
          IconButton(
            icon: const Text("A−", style: TextStyle(color: Colors.black)),
            onPressed: () {
              setState(() {
                if (fontSize > 14) fontSize -= 2;
              });
            },
          ),

          /// 🔠 FONT SIZE +
          IconButton(
            icon: const Text("A+", style: TextStyle(color: Colors.black)),
            onPressed: () {
              setState(() {
                fontSize += 2;
              });
            },
          ),

          /// ❤️ FAVORITE
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: toggleFavorite,
          ),
        ],
      ),

      /// 📄 BODY
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            /// 🔥 TITLE BELOW ARROW
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            /// 📖 LYRICS
            Expanded(
              child: SingleChildScrollView(
                child: buildLyrics(widget.lyrics),
              ),
            ),
          ],
        ),
      ),

      /// 🔘 FLOATING BUTTONS
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "yt",
            backgroundColor: const Color(0xFFD1C4E9),
            onPressed: openYoutube,
            child: const Icon(Icons.play_arrow, color: Colors.red),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: "home",
            backgroundColor: const Color(0xFFD1C4E9),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Icon(Icons.home, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
