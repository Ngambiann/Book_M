import 'package:bookmark/pages/mainpages/explore.dart';
import 'package:bookmark/pages/navigation/bookmark.dart';
import 'package:bookmark/pages/navigation/search.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
        elevation: 8.0,
        selectedItemColor:const Color.fromARGB(255, 169, 62, 23) ,
        unselectedItemColor: const Color(0xFF526400),
        showUnselectedLabels: false,
        showSelectedLabels: false,
       
       
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(PhosphorIconsRegular.compass,color: Colors.black54),
            activeIcon: Icon(PhosphorIconsBold.compass, color:Color.fromARGB(255, 169, 62, 23)),
            label: 'explore'
            
          ),
          BottomNavigationBarItem(
              icon: Icon(PhosphorIconsRegular.binoculars, color: Colors.black54),
              activeIcon: Icon(PhosphorIconsBold.binoculars, color: Colors.black87),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(PhosphorIconsRegular.bookmarks, color: Colors.black54),
              activeIcon: Icon(PhosphorIconsBold.bookmarks, color: Colors.black87),
              label: 'Bookmarks'
              )
        ],
        onTap: _onItemTapped,
      ),
      body: _navpages[_selectedIndex],
    );
  }
}
