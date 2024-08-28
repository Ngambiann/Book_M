import 'package:bookmark/pages/views/profile.dart';
import 'package:bookmark/pages/views/search.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
              icon: const Icon(PhosphorIconsBold.user),hoverColor:const Color.fromARGB(255, 159, 52, 14) ,),
        ],
      ),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            
          ],
        ),
      
      
    );
  }
}
