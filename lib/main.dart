import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'Welcome to',
                style: TextStyle(fontSize: 28),
              ),
              Text(
                'Worship lyrics Mara/Mizo',
                 style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 100),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Mara',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Mizo',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
