import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: ListView(
      children: const [
 Text('Favourites',
                    style: TextStyle(
                        color: Color.fromARGB(221, 237, 99, 7),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
      ],
    ),
    );
  }
}