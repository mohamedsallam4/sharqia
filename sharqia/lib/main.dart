import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:sharqia/Login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(),
        fontFamily: 'boold',
        textTheme: TextTheme(
          displaySmall: const TextStyle(
            fontFamily: 'boold',
            fontSize: 45.0,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: const TextStyle(
            fontFamily: 'boold',
          ),
          bodySmall: TextStyle(
            fontFamily: 'boold',
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
          displayLarge: const TextStyle(fontFamily: 'boold'),
          displayMedium: const TextStyle(fontFamily: 'boold'),
          headlineMedium: const TextStyle(fontFamily: 'boold'),
          headlineSmall: const TextStyle(fontFamily: 'norr'),
          titleLarge: const TextStyle(fontFamily: 'norr'),
          titleMedium: const TextStyle(fontFamily: 'norr'),
          bodyLarge: const TextStyle(fontFamily: 'norr'),
          bodyMedium: const TextStyle(fontFamily: 'norr'),
          titleSmall: const TextStyle(fontFamily: 'norr'),
          labelSmall: const TextStyle(fontFamily: 'norr'),
        ),
      ),
      routes: {
        Favorite.routeName: (context) => Favorite(),
        busStations.routeName: (context) => busStations(),
        Caffe.routeName: (context) => Caffe(),
        Clothes.routeName: (context) => Clothes(),
        Garden.routeName: (context) => Garden(),
        Gym.routeName: (context) => Gym(),
        Resturants.routeName: (context) => Resturants(),
        ShoppingMall.routeName: (context) => ShoppingMall(),
        Takeaway.routeName: (context) => Takeaway(),
        Taxi.routeName: (context) => Taxi(),
        TrainStations.routeName: (context) => TrainStations(),
      },
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
