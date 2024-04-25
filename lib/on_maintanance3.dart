import 'package:flutter/material.dart';
import 'package:ambw_uts/bottom_navigation_bar.dart';
import 'package:ambw_uts/main.dart';

class on_maintanance3 extends StatelessWidget {
  on_maintanance3({super.key});

  @override
  Widget build(BuildContext context) {
    int current_index = 3;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sydney CBD",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FoodApp()));
            },
          ),
        ),
        bottomNavigationBar:
            bottom_navigation_bar(current_index: current_index),
        body: const Center(
          child: Text("On Maintanance Top Foodie",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ));
  }
}
