import 'package:bookmark/pages/subpages/filter.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Filter()));
                }, icon: const Icon(Icons.filter_list_rounded)),
          ],
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              enableSuggestions: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  labelText: "Search for hidden gem",
                  labelStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.black45,
                  iconColor: Colors.black87,
                  suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Search()));
                      },
                      icon: const Icon(Icons.search_rounded))),
            ),
            //Center(
            //child: Image(image: AssetImage('assets/images/img.jpg')),
            //)
          ],
        ),
    );
  }
}
