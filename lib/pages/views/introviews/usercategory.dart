import 'package:bookmark/pages/views/authviews/auth.dart';

import 'package:flutter/material.dart';

class Usercategory extends StatelessWidget {
  const Usercategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 85, 47),
      body: Padding(
        padding: const EdgeInsets.all(120.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 221, 203, 171),
                )),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Auth()));
                },
                child: const Text(
                  'Explorer',
                  style: TextStyle(color: Colors.black),
                )),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 221, 203, 171),
                )),
                onPressed: () {},
                child: const Text(
                  'Business owner',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
