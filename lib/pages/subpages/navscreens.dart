import 'package:bookmark/pages/mainpages/explore.dart';
import 'package:bookmark/pages/subpages/bookmark.dart';
import 'package:bookmark/pages/subpages/search.dart';
import 'package:flutter/material.dart';

class Navscreens extends StatefulWidget {
  const Navscreens({super.key});

  @override
  State<Navscreens> createState() => _NavState();
}

class _NavState extends State<Navscreens> {
  int _selectedIndex = 0;

  final List<Widget> _navpages = [
    const Explore(),
    const Search(),
    const Bookmark(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:const Color.fromARGB(255, 159, 52, 14),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.home, color: Colors.black54),
            activeIcon: Icon(Icons.home, color: Colors.black87),
            label: 'explore'
            
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black54),
              activeIcon: Icon(Icons.search, color: Colors.black87),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Colors.black54),
              activeIcon: Icon(Icons.bookmark, color: Colors.black87),
              label: 'Bookmarks'
              )
        ],
        onTap: _onItemTapped,
      ),
      body: _navpages[_selectedIndex],
    );
  }
}
