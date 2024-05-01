import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:wlm/main.dart';
import 'package:wlm/services/user_setting.dart'; // Import your UserSettings class

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => UserSettings());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserSettings userSettings =
        getIt<UserSettings>(); // Get an instance of UserSettings

    return Scaffold(
      appBar: AppBar(
        title: Text('User Settings Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                // Example usage: Save a favourite song
                await userSettings.saveFavourite('song123');
                print('Favourite song saved!');
              },
              child: Text('Save Favourite'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Example usage: Get favourite songs
                List<String> favourites = await userSettings.getFavourites();
                print('Favourite songs: $favourites');
              },
              child: Text('Get Favourites'),
            ),
          ],
        ),
      ),
    );
  }
}
