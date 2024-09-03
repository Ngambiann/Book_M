import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/views/search.dart';
import 'package:flutter/material.dart';

class CafeBistros extends StatefulWidget {
  const CafeBistros({super.key});

  @override
  State<CafeBistros> createState() => _EventsState();
}

class _EventsState extends State<CafeBistros> {
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
                  'cafes/Bistros in the area:',
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
                hintText: "Search for cafes...",
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
                  nameofPlace: 'Cafe shiks',
                  imagePath: "assets/images/cafe.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cafebooks.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Cuties',
                  imagePath: "assets/images/cutecafe.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cafebooks.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cafe.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/coffeeplace.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cocktails.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Tres',
                  imagePath: "assets/images/restaurantfood.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cafebooks.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),
                  MyCard(
                  nameofPlace: 'Bistro Adreno',
                  imagePath: "assets/images/cutecafe.jpg",
                  location: 'KICC,Cbd',
                  onTap: () {},
                  rating: '5.0',
                  category: 'Cafes/Bistro'),

            ],
          )
        ],
      ),
    );
  }
}