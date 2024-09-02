import 'package:bookmark/dummydata/categories.dart';

import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/screens/notifications.dart';



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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Good Afternoon",
            style: TextStyle(
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
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Cuisines",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Cafes/Bistros",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Fine dining",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Picnic sites",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Hiking trails",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Events/shows",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Art Galleries",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Ghost restaurants",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Cool AirBnB",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Museums",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
                  ),
                  MyCategoriesbuttons(
                    categoryName: "Restaurant",
                    onSelected: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
