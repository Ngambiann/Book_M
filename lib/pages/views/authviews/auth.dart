import 'package:bookmark/pages/screens/navscreens.dart';
import 'package:bookmark/pages/views/introviews/slides.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //logged in user
            if (snapshot.hasData) {
              return const Navscreens();
            }

            //not logged in user
            else {
              return const Slides();
            }
          }),
    );
  }
}
