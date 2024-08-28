import 'package:bookmark/pages/authpages/auth.dart';
import 'package:bookmark/pages/intropage/slides.dart';
import 'package:bookmark/theme/darkmode.dart';
import 'package:bookmark/theme/lightmode.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookmark',
      theme: lightMode,
      darkTheme: darkMode,
      home: const Auth(),
    );
  }
}
