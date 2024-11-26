import 'package:flutter/material.dart';
import 'package:sharqia/homePage.dart';

class Garden extends StatelessWidget {
  final List<String> productImages = [
    "images/41.jpg",
    "images/42.jpg",
    "images/43.jpg",
    "images/44.jpg",
  ];

  static const routeName = '/Garden';

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
