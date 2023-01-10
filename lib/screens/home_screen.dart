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
              image: AssetImage('assets/wlmlst.png'),
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 251),
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
                  const SizedBox(height: 37),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TitlesScreen(language: 'Action song')),
                      );
                    },
                    child: const Text(
                      'Action song',
                      style: TextStyle(fontSize: 27),
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
