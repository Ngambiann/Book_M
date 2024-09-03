import 'package:bookmark/pages/screens/settings.dart';
import 'package:bookmark/pages/views/authviews/auth.dart';

import 'package:bookmark/theme/darkmode.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProv(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookmark',
      theme: Provider.of<ThemeProv>(context).themeData,
      darkTheme: darkMode,
      home: const Auth(),
    );
  }
}
