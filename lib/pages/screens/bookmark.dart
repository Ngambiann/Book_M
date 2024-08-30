
import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: ListView(
      children: const [
 Text('Bookmarks',
                    style: TextStyle(
                        color: Color.fromARGB(221, 237, 99, 7),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
      ],
    ),
    );
  }
}
