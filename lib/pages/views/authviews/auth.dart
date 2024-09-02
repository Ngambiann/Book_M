import 'package:bookmark/pages/screens/navscreens.dart';
import 'package:bookmark/pages/views/authviews/signup.dart';
import 'package:bookmark/pages/views/introviews/slides.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.data == null) {
                return const Slides();
              } else {
                return const Navscreens();
              }
            } if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            else {
              return const Signup();
            }
          }),
    );
  }
}
