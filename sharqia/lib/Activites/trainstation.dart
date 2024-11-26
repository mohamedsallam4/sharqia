import 'package:flutter/material.dart';

class TrainStations extends StatelessWidget {
  final List<String> productImages = [
    'images/أفضل-الأماكن-السياحية-في-مصر-2023.jpg',
    'images/أهرامات-الجيزة-بالقاهرة-الكبرى.jpg',
    'images/معبد-حتشبسوت-ليلًا.jpg',
    'images/السياحة-النيلية-بأسوان.jpg',
    'images/الغردقة.jpg',
    'images/المعابد-الفرعونية.jpg',
    'images/سياحة-الغوص-في-مصر.jpg',
    'images/صورة-من-الأعلى-لوسط-القاهرة.jpg',
    "images/منطقة-وسط-البلد-القاهرة.jpg",
  ];

  static const routeName = '/TrainStations';

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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked on item ${index + 1}'),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [],
                ),
                child: Center(
                    child: Column(
                  children: [
                    Image.asset(
                      productImages[index],
                      fit: BoxFit.cover,
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
