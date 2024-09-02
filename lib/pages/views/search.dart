
import 'package:bookmark/dummydata/gems.dart';

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: [
          TextFormField(
            controller: searchController,
            enableSuggestions: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                hintText: "Search hidden gems...",
                labelStyle: const TextStyle(color: Colors.black54),
                fillColor: Colors.black45,
                iconColor: Colors.black87,
                suffixIcon: IconButton(
                    onPressed: () {
//search database
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Search()));
                    },
                    icon: const Icon(Icons.search_rounded))),
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 30,
          ),
           MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onSelected: () {},
                    rating: "4.7",
                    category: "Bistro"),
        ],
      ),
    );
  }
}
