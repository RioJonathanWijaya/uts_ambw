import 'package:flutter/material.dart';
import 'package:ambw_uts/bottom_navigation_bar.dart';
import 'package:ambw_uts/main.dart';

class on_maintanance1 extends StatelessWidget {
  on_maintanance1({super.key});

  @override
  Widget build(BuildContext context) {
    int current_index = 1;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sydney CBD",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
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
        body: Center(
          child: Text("On Maintanance",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        ));
  }
}
