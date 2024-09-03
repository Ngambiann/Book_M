import 'package:bookmark/dummydata/gems.dart';
import 'package:bookmark/pages/views/search.dart';
import 'package:flutter/material.dart';

class Artgalleries extends StatefulWidget {
  const Artgalleries({super.key});

  @override
  State<Artgalleries> createState() => _EventsState();
}

class _EventsState extends State<Artgalleries> {
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              //header
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Art Galleries in the area:',
                  style: TextStyle(
                    fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 193, 99, 36)),
                      textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 15,
              ),

          TextFormField(
            controller: searchController,
            enableSuggestions: true,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                hintText: "Search for galleries...",
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
                  nameofPlace: 'Tribal Art Gallery',
                  imagePath: "assets/images/artgalleryC.jpg",
                  location: 'Karen,karen Blixen',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Tribal Art Gallery',
                  imagePath: "assets/images/artgalleryC.jpg",
                  location: 'Karen,karen Blixen',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Tribal Art Gallery',
                  imagePath: "assets/images/artgalleryC.jpg",
                  location: 'Karen,karen Blixen',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Tribal Art Gallery',
                  imagePath: "assets/images/artgalleryC.jpg",
                  location: 'Karen,karen Blixen',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),
                  MyCard(
                  nameofPlace: 'Ardhi Gallery',
                  imagePath: "assets/images/artgalleryB.jpg",
                  location: 'Ole Sangale Road,Madaraka',
                  onTap: () {},
                  rating: '4.0',
                  category: 'Art galleries'),

            ],
          )
        ],
      ),
    );
  }
}