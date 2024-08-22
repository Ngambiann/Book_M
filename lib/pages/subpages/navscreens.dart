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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black54),
            activeIcon: Icon(Icons.home, color: Colors.black87),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.black54),
              activeIcon: Icon(Icons.explore, color: Colors.black87),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark, color: Colors.black54),
              activeIcon: Icon(Icons.bookmark, color: Colors.black87),
              label: 'Bookmark')
        ],
        onTap: _onItemTapped,
      ),
      body: _navpages[_selectedIndex],
    );
  }
}
