import 'package:flutter/material.dart';
import 'package:ambw_uts/main.dart';
import 'package:ambw_uts/on_maintanance.dart';
import 'package:ambw_uts/on_maintanance2.dart';
import 'package:ambw_uts/on_maintanance3.dart';
import 'package:ambw_uts/on_maintanance4.dart';

class bottom_navigation_bar extends StatefulWidget {
  bottom_navigation_bar({super.key, required this.current_index});

  final int current_index;

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.current_index,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined), label: 'Bookmark'),
          BottomNavigationBarItem(
              icon: Icon(Icons.thumbs_up_down_outlined), label: 'Top Foodie'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FoodApp()));
              case 1:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => on_maintanance1()));
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => on_maintanance2()));
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => on_maintanance3()));
              case 4:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => on_maintanance4()));
            }
          });
        });
  }
}
