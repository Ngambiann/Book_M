import 'package:flutter/material.dart';
import 'package:bookmark/pages/mainpages/explore.dart';
import 'package:bookmark/pages/navigation/bookmark.dart';
import 'package:bookmark/pages/navigation/search.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  final List<Widget> _navpages = [
    const Explore(),
    const Search(),
    const Bookmark(),
  ];
  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 159, 52, 14),
        shape:const CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30,
                padding: const EdgeInsets.all( 28),
                icon: const Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    _onitemTapped(0);
                  });
                },
              ),
               IconButton(
                iconSize: 30,
                padding: const EdgeInsets.all( 28),
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _onitemTapped(1);
                  });
                },
              ),
               IconButton(
                iconSize: 30,
                padding: const EdgeInsets.all(28),
                icon: const Icon(Icons.bookmark),
                onPressed: () {
                  setState(() {
                    _onitemTapped(2);
                  });
                },
              )
              
            ],
          ),
        ),
      
      ),
      body: _navpages[_selectedIndex],
    );
  }
}
