import 'package:flutter/material.dart';
import 'package:wlm/screens/titles_screen/titles_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'favorite_screen/favorite_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(
            //
            child: Image(
              image: AssetImage('assets/lili.png'),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 222),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TitlesScreen(language: 'mara'),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 250, 247, 247),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Text(
                        'Mara',
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 25,
                          color: Color.fromARGB(255, 248, 246, 245),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TitlesScreen(language: 'mizo')),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 250, 247, 247),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Text(
                        'Mizo',
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 25,
                          color: Color.fromARGB(255, 248, 246, 245),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TitlesScreen(language: 'dance')),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 250, 247, 247),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Text(
                        'Worship dance',
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 25,
                          color: Color.fromARGB(255, 248, 246, 245),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoriteScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: const Color.fromARGB(255, 250, 247, 247),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Text(
                        'Favorite',
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 25,
                          color: Color.fromARGB(255, 248, 246, 245),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
