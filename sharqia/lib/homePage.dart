import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';

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

  // قائمة الأيقونات للأصناف
  final List<IconData> categoriesIcons = [
    Icons.account_circle,
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
    Icons.qr_code_scanner_outlined,
    Icons.category,
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
                    // ListView أفقية للأيقونات
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesIcons.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              child: IconButton(
                                icon: Icon(categoriesIcons[index],
                                    color: Colors.white),
                                onPressed: () {
                                  // يمكنك إضافة منطق لتغيير الأصناف أو الفئات هنا
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // GridView للبضائع
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
          icon: Icon(
            Icons.search_rounded,
            color: colorAnimated.color,
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
  @override
  List<Widget> buildActions(BuildContext context) {
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
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(" Results of your search <3 \"$query\""),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      "Minya elqamh",
      "Mashtul Elsoq",
      "Elshabrawen",
      "Hefna",
      "Zagazig",
      "Hehia",
      "Elbalashun",
      "10 of Ramadan city ",
      "Etmida",
      "شنبارة الميمونة",
      "الزنشلون",
      "كفر صقر",
      "ابوكبير",
      "ابو حماد",
      "هيهيا",
      "شبلنجة",
      "العزازيه",
    ]
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
