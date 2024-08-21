import 'package:bookmark/pages/authpages/authenticate.dart';
import 'package:bookmark/pages/subpages/navscreens.dart';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black54)),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Navscreens()));
              },
              child:
                  const Text('Skip', style: TextStyle(color: Colors.white70)))
        ],
      )),
      
      backgroundColor: Colors.white,
      //Image.asset('images/image_a.jpg')

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                boxShadow: List.empty(growable: true),
                border: const Border(top: BorderSide.none),
                borderRadius: BorderRadius.circular(12),
                color: Colors.black54,
              ),
              padding: const EdgeInsets.all(25),
              child: const Text(
                "Bookmark helps you discover amazing hidden gems around you and all the information you need about the place",
                strutStyle: StrutStyle(fontSize: 35),
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Authenticate()));
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black)),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
              onFocusChange: (value) => true,
            )
          ],
        ),
      ),
    );
  }
}
