import 'package:flutter/material.dart';

class personAcc extends StatefulWidget {
  const personAcc({super.key});

  @override
  State<StatefulWidget> createState() => _personAccState();
}

class _personAccState extends State<personAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    "images/الغردقة.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Origi Abdo",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 13,
              ),
            ],
          ),
          Row(
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
