import 'package:bookmark/components/buttons/categories.dart';

import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/screens/airbnb.dart';
import 'package:bookmark/pages/screens/artgalleries.dart';
import 'package:bookmark/pages/screens/cafe_bistros.dart';
import 'package:bookmark/pages/screens/events.dart';
import 'package:bookmark/pages/screens/hiking.dart';
import 'package:bookmark/pages/screens/notifications.dart';
import 'package:bookmark/pages/screens/picnicsites.dart';
import 'package:bookmark/pages/screens/restaurants.dart';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _MainpageState();
}

class _MainpageState extends State<Explore> {
  DateTime now = DateTime.now();
  String greeting = switch (DateTime.now().hour) {
    >= 6 && < 12 => 'Good morning',
    >= 12 && < 18 => 'Good afternoon',
    _ => 'Good evening',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            greeting,
            style: const TextStyle(
                color: Color.fromARGB(255, 185, 85, 30),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Notifications()));
              },
              icon: const Icon(PhosphorIconsRegular.bellSimple),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCategoriesbuttons(
                    categoryName: "Restaurants",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Restaurants()));
                    },
                  ),
                  
                  MyCategoriesbuttons(
                    categoryName: "Cafes/Bistros",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CafeBistros()));
                    },
                  ),
                  
                  MyCategoriesbuttons(
                    categoryName: "Picnic sites",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Picnicsites()));
                    },
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Hiking trails",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Hiking()));
                    },
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Events/shows",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const EventsShows()));
                    },
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Art Galleries",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Artgalleries()));
                    },
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Cool AirBnB",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Airbnb()));
                    },
                  ),
                  
                ],
              ),
            ),
            Column(
              children: [
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
                MyCard(
                    nameofPlace: "Bistro Adreno",
                    imagePath: "assets/images/bistro.jpg",
                    location: "Ole Sangale Road,Madaraka",
                    onTap: () {},
                    rating: "4.7",
                    category: "Bistro"),
               
              ],
            )
          ],
        ),
      ),
    );
  }
}
