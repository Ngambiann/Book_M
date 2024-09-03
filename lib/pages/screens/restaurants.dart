import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/views/search.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _EventsState();
}

class _EventsState extends State<Restaurants> {
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
                  'Restaurants in the area:',
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
                hintText: "Search for restaurants...",
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
                  nameofPlace: 'Mwendasss',
                  imagePath: "assets/images/bar&restaurant.jpg",
                  location: 'Nrb town,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Hotel nimo',
                  imagePath: "assets/images/hotel and restaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Bun & Beef',
                  imagePath: "assets/images/food.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'The Steak House',
                  imagePath: "assets/images/formaldine.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Fish cuisine',
                  imagePath: "assets/images/fishfood.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/rooftoprestaurant.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Dinny diner',
                  imagePath: "assets/images/food.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),
                  MyCard(
                  nameofPlace: 'Fishy house',
                  imagePath: "assets/images/fishfood.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Looby dobby'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/lobby.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Hiroshima'),
                  MyCard(
                  nameofPlace: 'Wine tails',
                  imagePath: "assets/images/japanese.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Restaurants'),

            ],
          )
        ],
      ),
    );
  }
}