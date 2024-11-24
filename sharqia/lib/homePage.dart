import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
import 'package:sharqia/personalAcc.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<StatefulWidget> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
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

  final List<IconData> categoriesIcons = [
    Icons.local_post_office_rounded,
    Icons.favorite,
    Icons.restaurant,
    Icons.local_offer,
    Icons.forest_outlined,
    Icons.fastfood,
    Icons.fitness_center_outlined,
    Icons.directions_transit_filled_outlined,
    Icons.directions_bus_filled_outlined,
    Icons.directions_car_filled_rounded,
    Icons.local_cafe_rounded,
    Icons.dry_cleaning_sharp,
    Icons.shopping_cart,
    Icons.question_mark_rounded,
  ];

  final List<Widget> pages = [
    Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Messages"),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'images/mo.jpg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User ${index + 1}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "This is a preview of the message...",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "12:00",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Favorite"),
        ),
        body: const Center(child: Text("Favorite"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Resturant"),
        ),
        body: const Center(child: Text("Resturant"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Location"),
        ),
        body: const Center(child: Text("Location"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Garden"),
        ),
        body: const Center(child: Text("Garden"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Takeaway"),
        ),
        body: const Center(child: Text("Takeaway"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Gym"),
        ),
        body: const Center(child: Text("Gym"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Train Station"),
        ),
        body: const Center(child: Text("Train Station"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Bus Station"),
        ),
        body: const Center(child: Text("Bus station"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Taxi"),
        ),
        body: const Center(child: Text("Taxi"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Caffe"),
        ),
        body: const Center(child: Text("Caffe"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Clothes"),
        ),
        body: const Center(child: Text("Clothes"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Shopping mall"),
        ),
        body: const Center(child: Text("Shopping mall"))),
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 53, 7, 69),
          centerTitle: true,
          title: const Text("Help"),
        ),
        body: const Center(child: Text("Connected With Us"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar: const ColorBuilder(
            Colors.transparent, Color.fromARGB(0, 33, 149, 243)),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                "images/نهر-النيل-بالقاهرة.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.36,
                ),
                padding: const EdgeInsets.all(16),
                height: 900,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesIcons.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 53, 7, 69),
                              child: IconButton(
                                icon: Icon(categoriesIcons[index],
                                    color: Colors.white),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => pages[index],
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Best Places",
                        style: TextStyle(
                            color: Color.fromARGB(255, 53, 7, 69),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: productImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
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
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  productImages[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const personAcc(),
                ));
          },
          icon: const Icon(
            color: Colors.white,
            Icons.account_circle,
            size: 35,
          )),
      centerTitle: true,
      backgroundColor: colorAnimated.background,
      elevation: 0,
      title: Text(
        "Welcome to Sharqia",
        style: TextStyle(
          color: colorAnimated.color,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showSearch(context: context, delegate: CustomSearchDelegate());
          },
          icon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final String imagePath;

  const ProductDetailPage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<String> searchTerms = [
    'Nile',
    'Giza Pyramids',
    'Luxor Temple',
    'Aswan',
    'Hurghada',
    'Pharaonic Temples',
    'Diving in Egypt',
    'Downtown Cairo',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(title: Text(result)),
                  body: Center(child: Text('Details about $result')),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in searchTerms) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var suggestion = matchQuery[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
