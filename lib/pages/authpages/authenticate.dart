import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _SignInState();
}

class _SignInState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(0, 255, 255, 255),
    );
  }
}