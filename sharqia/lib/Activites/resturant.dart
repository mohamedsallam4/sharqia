import 'package:flutter/material.dart';

class Resturants extends StatelessWidget {
  static const routeName = '/Resturants';
  final List<String> restaurantItems = [
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
    "images/الغردقة.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: EdgeInsets.all(10),
        itemCount: restaurantItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  restaurantItems[index],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
