import 'package:flutter/material.dart';

// ignore: camel_case_types
class personAcc extends StatefulWidget {
  const personAcc({super.key});

  @override
  State<StatefulWidget> createState() => _personAccState();
}

// ignore: camel_case_types
class _personAccState extends State<personAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        title: const Text("Profile"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              ClipOval(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "images/mo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Text(
                "Origi Abdo",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 13,
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: Card(
                child: Column(
                  children: [Text("الاشتراكات"), Text("110")],
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
