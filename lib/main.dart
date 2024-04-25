import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ambw_uts/most_popular.dart';
import 'package:ambw_uts/meal_deals.dart';
import 'package:ambw_uts/bottom_navigation_bar.dart';

void main() {
  runApp(
    MaterialApp(
      home: FoodApp(),
    ),
  );
}

class FoodApp extends StatefulWidget {
  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  int current_index = 0;

  List<Map<String, String>> most_popular_card = [
    {
      'image': 'images/kfc2.jpg',
      'shops': 'KFC Broadway',
      'address': '122 Queen Street',
      'type': 'Fried Chicken, American'
    },
    {
      'image': 'images/greek.jpeg',
      'shops': 'Greek House',
      'address': '23 Queen Street',
      'type': 'Burnitos, Greek'
    },
    {
      'image': 'images/salad.jpg',
      'shops': 'Salad House',
      'address': '28 Queen Street',
      'type': 'Salad, American'
    },
    {
      'image': 'images/sushi.jpeg',
      'shops': 'Sushi House',
      'address': '177 Queen Street',
      'type': 'Sushi, Japan'
    },
  ];

  List<Map<String, String>> meal_deals_card = [
    {
      'image': 'images/sushi.jpeg',
      'shops': 'Sushi House',
      'address': '122 Queen Street',
      'type': 'Sushi, Japan'
    },
    {
      'image': 'images/salad.jpg',
      'shops': 'Salad House',
      'address': '28 Queen Street',
      'type': 'Salad, American'
    },
    {
      'image': 'images/greek.jpeg',
      'shops': 'Greek House',
      'address': '23 Queen Street',
      'type': 'Burnitos, Greek'
    },
    {
      'image': 'images/kfc2.jpg',
      'shops': 'KFC Broadway',
      'address': '177 Queen Street',
      'type': 'KFC, American'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Sydney CBD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.arrow_back_sharp,
              color: Colors.amber,
            ),
          ),
          bottomNavigationBar:
              bottom_navigation_bar(current_index: current_index),
          body: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 10, top: 10),
              child: TextField(
                autocorrect: false,
                showCursor: true,
                cursorColor: Colors.amber,
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    iconColor: Colors.grey,
                    prefixIcon: Icon(Icons.search_outlined),
                    labelText: "Search for restaurants...",
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.amber))),
              ),
            ),
            Stack(
              children: [
                const SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('images/thai_style.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 260,
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                        Color.fromRGBO(0, 0, 0, 0.9),
                        Color.fromRGBO(0, 0, 0, 0)
                      ])),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Thai Style",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text("12 Places",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white))
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle_rounded,
                                  size: 10, color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle_rounded,
                                  size: 10, color: Colors.white54),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(Icons.circle_rounded,
                                  size: 10, color: Colors.white54),
                            ),
                            Icon(Icons.circle_rounded,
                                size: 10, color: Colors.white54)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Text("Most Popular",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 180),
                  child: InkWell(
                    child: const Text("See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.lightBlueAccent)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => most_popular()));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                    children: most_popular_card.map((data) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Card(
                      child: Container(
                        width: 200,
                        height: 255,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Image.asset(
                                      data['image'] ?? 'images/thai_style.jpg',
                                      fit: BoxFit.cover,
                                      height: 150),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    data['shops'] ?? 'KFC Broadway',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data['address'] ?? '122 Queen Street',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data['type'] ?? 'Fried Chicken, American',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ]),
            ),
            Row(
              children: [
                const Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Text("Meal Deals",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 210),
                  child: InkWell(
                    child: const Text("See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.lightBlueAccent)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => meal_deals()));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                    children: meal_deals_card.map((data) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Card(
                      child: Container(
                        width: 200,
                        height: 255,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 2))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Image.asset(
                                      data['image'] ?? 'images/thai_style.jpg',
                                      fit: BoxFit.cover,
                                      height: 150),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Text(
                                    data['shops'] ?? 'KFC Broadway',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data['address'] ?? '122 Queen Street',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    data['type'] ?? 'Fried Chicken, American',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ]),
            ),
          ])),
    );
  }
}
