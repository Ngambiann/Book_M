import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/views/search.dart';
import 'package:flutter/material.dart';

class Hiking extends StatefulWidget {
  const Hiking({super.key});

  @override
  State<Hiking> createState() => _EventsState();
}

class _EventsState extends State<Hiking> {
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              //header
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hiking sites in the area:',
                  style: TextStyle(
                    fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 193, 99, 36)),
                      textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 15,
              ),

          TextFormField(
            controller: searchController,
            enableSuggestions: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                hintText: "Search for sites...",
                labelStyle: const TextStyle(color: Colors.black54),
                fillColor: Colors.black45,
                iconColor: Colors.black87,
                suffixIcon: IconButton(
                    onPressed: () {

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Search()));
                    },
                    icon: const Icon(Icons.search_rounded))),
            onChanged: (value) {},
          ),

              MyCard(
                  nameofPlace: 'Trackies',
                  imagePath: "assets/images/hiking.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies Ngong',
                  imagePath: "assets/images/hikingD.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hikingD.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hikingbags.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hiking.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hikingD.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hikingbags.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hiking.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hikingD.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),
                  MyCard(
                  nameofPlace: 'trackies',
                  imagePath: "assets/images/hiking.jpg",
                  location: 'Karura,kiambu road gate',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiking'),

            ],
          )
        ],
      ),
    );
  }
}