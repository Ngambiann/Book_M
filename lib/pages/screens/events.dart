import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/views/search.dart';
import 'package:flutter/material.dart';

class EventsShows extends StatefulWidget {
  const EventsShows({super.key});

  @override
  State<EventsShows> createState() => _EventsState();
}

class _EventsState extends State<EventsShows> {
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
                  'Events in the area:',
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
                hintText: "Search for events...",
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
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Events/shows'),

            ],
          )
        ],
      ),
    );
  }
}
