import 'package:flutter/material.dart';
import 'package:sharqia/Login.dart';
import 'package:sharqia/messages.dart';
import 'package:sharqia/personalAcc/events.dart';
import 'package:sharqia/personalAcc/settings.dart';
import 'package:sharqia/personalAcc/support.dart';

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
                "Mohamed Sallam",
                style: TextStyle(fontSize: 22),
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
              )),
              Expanded(
                  child: Card(
                child: Column(
                  children: [Text("الأصدقاء"), Text("20")],
                ),
              )),
              Expanded(
                  child: Card(
                child: Column(
                  children: [Text("المتابعون"), Text("80")],
                ),
              )),
              Expanded(
                  child: Card(
                child: Column(
                  children: [Text("الحجوزات"), Text("6")],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => messanger(),
                          ));
                    },
                    icon: Icon(Icons.local_post_office_rounded,
                        color: Colors.white),
                    label: Text(
                      "Messages",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Events(),
                          ));
                    },
                    icon: Icon(Icons.event_available_rounded,
                        color: Colors.white),
                    label: Text(
                      "Events",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => support(),
                          ));
                    },
                    icon: Icon(Icons.help, color: Colors.white),
                    label: Text(
                      "Help",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Settings(),
                          ));
                    },
                    icon: Icon(Icons.settings, color: Colors.white),
                    label: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    icon: Icon(Icons.logout, color: Colors.white),
                    label: Text(
                      "LogOut",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
