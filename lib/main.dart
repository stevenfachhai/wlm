import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:wlm/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 🔥 Firebase init (fixed)
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyB-c5mavpL3LlfdGg67g51MtSKTM5_gVOg",
        authDomain: "adminpanel-82819.firebaseapp.com",
        projectId: "adminpanel-82819",
        storageBucket: "adminpanel-82819.appspot.com",
        messagingSenderId: "386151344884",
        appId: "1:386151344884:web:8c157aa6f4495fe5c44ca1",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  // 🔥 Important (fix web Firestore issues)
  // ignore: avoid_web_libraries_in_flutter
  if (kIsWeb) {
    // This ensures proper Firestore connection in web
    Firebase.app();
  }

  // Ads init
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
