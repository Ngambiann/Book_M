import 'package:bookmark/pages/subpages/profile.dart';
import 'package:bookmark/pages/subpages/search.dart';

import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _MainpageState();
}

class _MainpageState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Column(children: [
          Text(
            "Find your next",
            style: TextStyle(color: Colors.black54),
            textAlign: TextAlign.left,
          ),
          Text(
            "Hidden gem!",
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              icon: const Icon(Icons.person)),
        ],
      ),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              enableSuggestions: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: "Search for hidden gem",
                  labelStyle: const TextStyle(color: Colors.black54),
                  fillColor: const Color.fromARGB(255, 159, 52, 14),
                  iconColor: Colors.black87,
                  suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Search()));
                      },
                      icon: const Icon(Icons.search_rounded))),
            ),
            Center(
        child:Image.asset('assets/images/icon2.png',fit: BoxFit.cover)
      ),
          ],
        ),
      
      
    );
  }
}
