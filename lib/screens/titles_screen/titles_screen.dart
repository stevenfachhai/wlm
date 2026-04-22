import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wlm/screens/song_lyric.dart';

class TitlesScreen extends StatefulWidget {
  final String category;

  const TitlesScreen({super.key, required this.category});

  @override
  State<TitlesScreen> createState() => _TitlesScreenState();
}

class _TitlesScreenState extends State<TitlesScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Worship Lyrics Mara&Mizo",
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(color: Colors.black),
      ),
      body: Column(
        children: [
          /// 🔍 SEARCH BAR
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search song...",
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade300,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchText = value.toLowerCase();
                });
              },
            ),
          ),

          /// 📋 LIST
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('lyrics')
                  .where('category', isEqualTo: widget.category)
                  .orderBy('title')
                  .snapshots(),
              builder: (context, snapshot) {
                /// ❌ SHOW REAL ERROR
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      snapshot.error.toString(),
                      textAlign: TextAlign.center,
                    ),
                  );
                }

                /// ⏳ LOADING
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                final allDocs = snapshot.data!.docs;

                /// 🔍 FILTER SEARCH
                final docs = allDocs.where((doc) {
                  final title = (doc['title'] ?? '').toString().toLowerCase();
                  return title.contains(searchText);
                }).toList();

                /// ❌ EMPTY
                if (docs.isEmpty) {
                  return const Center(child: Text("No songs found"));
                }

                /// ✅ LIST VIEW
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final doc = docs[index];

                    final title = doc['title'] ?? '';
                    final lyrics = doc['lyricText'] ?? '';
                    final youtubeLink = doc['youtubeLink'] ?? '';

                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        title: Text(
                          "${index + 1}. $title",
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),

                        /// 👉 OPEN LYRICS SCREEN
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
