import 'package:flutter/material.dart';
import 'package:sharqia/homePage.dart';

class Busstation extends StatelessWidget {
  final List<String> productImages = [
    "images/61.jpg",
    "images/62.jpg",
    "images/63.jpg",
    "images/64.jpg",
    "images/65.jpg",
    "images/66.jpg",
    "images/67.jpg",
    "images/68.jpg",
    "images/69.jpg",
    "images/70.jpg",
    "images/71.jpg",
    "images/72.jpg",
    "images/73.jpg",
  ];

  static const routeName = '/busstation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.0,
          ),
          itemCount: productImages.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      imagePath: productImages[index],
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 2),
                    content: Text('You clicked on item ${index + 1}'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: Colors.grey)],
                ),
                child: Center(
                    child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        productImages[index],
                        height: 155,
                        width: 155,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
