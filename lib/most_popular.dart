import 'package:flutter/material.dart';
import 'package:ambw_uts/main.dart';

class most_popular extends StatelessWidget {
  most_popular({super.key});

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

  @override
  Widget build(BuildContext context) {
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
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
            children: most_popular_card.map((data) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Container(
                width: double.infinity,
                height: 360,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            data['image'] ?? 'images/thai_style.jpg',
                            height: 250,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: Text(
                            data['shops'] ?? 'KFC Broadway',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
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
    );
  }
}
