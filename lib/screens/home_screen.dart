import 'package:flutter/material.dart';
import 'package:wlm/screens/titles_screen/titles_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            //
            child: Image(
              image: AssetImage('assets/last.png'),
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
                                TitlesScreen(language: 'mara')),
                      );
                    },
                    child: const Text('Mara',
                        style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 246, 222, 222),
                          fontWeight: FontWeight.bold,
                          backgroundColor: Color.fromARGB(250, 0, 0, 0),
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(255, 247, 131, 131),
                                blurRadius: 3.0,
                                offset: Offset(4, 2))
                          ],
                        )),
                  ),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'mizo')),
                      );
                    },
                    child: const Text('Mizo',
                        style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 246, 222, 222),
                          fontWeight: FontWeight.bold,
                          backgroundColor: Color.fromARGB(250, 0, 0, 0),
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(255, 247, 131, 131),
                                blurRadius: 3.0,
                                offset: Offset(4, 2))
                          ],
                        )),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'dance')),
                      );
                    },
                    child: const Text('Action song',
                        style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 246, 222, 222),
                          fontWeight: FontWeight.bold,
                          backgroundColor: Color.fromARGB(250, 0, 0, 0),
                          shadows: [
                            Shadow(
                                color: Color.fromARGB(255, 247, 131, 131),
                                blurRadius: 3.0,
                                offset: Offset(4, 2))
                          ],
                        )),
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
