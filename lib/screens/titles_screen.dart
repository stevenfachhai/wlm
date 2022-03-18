import 'package:flutter/material.dart';
import '../song/song_titles.dart';
 

class TitlesScreen extends StatelessWidget {
  const TitlesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: maraSongTitles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(maraSongTitles[index]),
            ),
          );
        },
      ),
    );

  }
}

