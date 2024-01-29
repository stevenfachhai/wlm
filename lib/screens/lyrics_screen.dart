import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LyricsScreen extends StatefulWidget {
  const LyricsScreen({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Map<String, String> song;

  @override
  State<LyricsScreen> createState() => _LyricsScreenState();
}

class _LyricsScreenState extends State<LyricsScreen> {
  String _lyrics = '';

  @override
  void initState() {
    super.initState();
    _lyrics = widget.song['lyrics']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            _lyrics,
            style: const TextStyle(fontSize: 17),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final link = widget.song['link'] ?? '';
          if (link.isEmpty) return;
          final url = Uri.parse(link);
          launchUrl(url);
        },
        child: const Icon(
          Icons.play_circle_filled,
          color: Colors.red,
        ),
      ),
    );
  }
}
