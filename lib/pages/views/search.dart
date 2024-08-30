import 'package:bookmark/pages/screens/filter.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  final TextEditingController searchController =TextEditingController();
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
                }, icon: const Icon(PhosphorIconsRegular.funnelSimple)),
          ],
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: searchController,
              enableSuggestions: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45)),
                  hintText: "Search hidden gems...",
                  labelStyle: const TextStyle(color: Colors.black54),
                  fillColor: Colors.black45,
                  iconColor: Colors.black87,
                  suffixIcon: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Search()));
                      },
                      icon: const Icon(Icons.search_rounded))),
                      onChanged: (value) {
                        
                      },
            ),
            Visibility(
              visible: searchController.text.isEmpty?false:true,
              child: Expanded(child: ListView.builder(
                physics:const  NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: () {
                      
                    },
                    child:  Text("location$index"),
                  );
              
              })
              
              ),
            )
            //Center(
            //child: Image(image: AssetImage('assets/images/img.jpg')),
            //)
          ],
        ),
    );
  }
}
