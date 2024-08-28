import 'package:bookmark/pages/authpages/login.dart';
import 'package:bookmark/pages/screens/navscreens.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //logged in user
            if (snapshot.hasData) {
              return const Navscreens();
            }

            //not loggeg in user
            else {
              return const Login();
            }
          }),
    );
  }
}
