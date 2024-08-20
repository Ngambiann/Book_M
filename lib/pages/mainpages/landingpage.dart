import 'package:bookmark/pages/mainpages/explore.dart';
import 'package:flutter/material.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Explore()));
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
