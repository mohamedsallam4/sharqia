import 'package:flutter/material.dart';
import 'package:sharqia/Login.dart';
import 'package:sharqia/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
