import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
import 'package:sharqia/Activites/busstation.dart';
import 'package:sharqia/Activites/caffe.dart';
import 'package:sharqia/Activites/clothes.dart';
import 'package:sharqia/Activites/favorite.dart';
import 'package:sharqia/Activites/garden.dart';
import 'package:sharqia/Activites/gym.dart';
import 'package:sharqia/Activites/resturant.dart';
import 'package:sharqia/Activites/shoppingmall.dart';
import 'package:sharqia/Activites/takeaway.dart';
import 'package:sharqia/Activites/taxi.dart';
import 'package:sharqia/Activites/trainstation.dart';
import 'package:sharqia/personalAcc/personalAcc.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<StatefulWidget> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  final List<String> productImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
  ];

  final List<IconData> categoriesIcons = [
    Icons.favorite,
    Icons.restaurant,
    Icons.forest_outlined,
    Icons.fastfood,
    Icons.fitness_center_outlined,
    Icons.directions_transit_filled_outlined,
    Icons.directions_bus_filled_outlined,
    Icons.directions_car_filled_rounded,
    Icons.local_cafe_rounded,
    Icons.dry_cleaning_sharp,
    Icons.shopping_cart,
  ];

  final List<Widget> Activities = [
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Favorite"),
      ),
      body: Container(width: double.infinity, child: Favorite()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Resturants"),
      ),
      body: Container(width: double.infinity, child: Resturant()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Garden"),
      ),
      body: Container(width: double.infinity, child: Garden()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Takeaway"),
      ),
      body: Container(width: double.infinity, child: Takeaway()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Gym"),
      ),
      body: Container(width: double.infinity, child: Gym()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Train Stations"),
      ),
      body: Container(width: double.infinity, child: Trainstation()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Bus Stations"),
      ),
      body: Container(width: double.infinity, child: Busstation()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Taxi"),
      ),
      body: Container(width: double.infinity, child: Taxi()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Caffee"),
      ),
      body: Container(width: double.infinity, child: Caffe()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Clothes"),
      ),
      body: Container(width: double.infinity, child: Clothes()),
    ),
    Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("ShoppingMall"),
      ),
      body: Container(width: double.infinity, child: Shoppingmall()),
    ),
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
                "images/79.jpg",
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
                                style: ButtonStyle(
                                    overlayColor:
                                        WidgetStatePropertyAll(Colors.black)),
                                icon: Icon(categoriesIcons[index],
                                    color: Colors.white),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Activities[index],
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
    'منيا القمح',
    "بلبيس",
    "مشتول السوق",
    "العاشر من رمضان",
    "أبو حماد",
    "الزقازيق",
    "الإنايات",
    "ديرب نجم",
    "الإبراهيمية",
    "هيهيا",
    "القرين",
    "أبو كبير",
    "فاقوس",
    "أولاد صقر",
    "كفر صقر",
    "منشأة أبو عمر",
    "الحسينية",
    "صان الحجر القبلية",
    "سنهوت",
    "السعديين",
    "البلاشون",
    "حفنا",
    "شلشلمون",
    "العزازية",
    "كفر شلشلمون",
    "بني هلال",
    "كوم العرب",
    "شبلنجه",
    "الشبر",
    "الحميدية",
    "المحمدية",
    "ميت بشار",
    "الجديدة",
    "الزنكلون",
    "النعامنة",
    "بني صالح",
    "كفر سمري",
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
