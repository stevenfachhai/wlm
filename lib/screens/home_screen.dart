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
              image: AssetImage('assets/wlmb.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Worship lyrics Mara/Mizo',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 100),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'mara')),
                      );
                    },
                    child: const Text(
                      'Mara',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'mizo')),
                      );
                    },
                    child: const Text(
                      'Mizo',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'Dance')),
                      );
                    },
                    child: const Text(
                      'Dance',
                      style: TextStyle(fontSize: 30),
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
