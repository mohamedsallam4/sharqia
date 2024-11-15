import 'package:flutter/material.dart';

// ignore: camel_case_types
class forgrtPassword extends StatefulWidget {
  const forgrtPassword({super.key});

  @override
  State<forgrtPassword> createState() => _forgrtPasswordState();
}

// ignore: camel_case_types
class _forgrtPasswordState extends State<forgrtPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 7, 69),
        centerTitle: true,
        title: const Text("Find my Account !"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Search about your account",
                style: TextStyle(
                  color: Color.fromARGB(255, 53, 7, 69),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              cursorColor: const Color.fromARGB(255, 53, 7, 69),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 53, 7, 69))),
                labelText: "USer Name",
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                hintText: "Phone Number or Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 53, 7, 69),
                    )),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 53, 7, 69),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextButton(
                style: const ButtonStyle(
                    overlayColor:
                        MaterialStatePropertyAll(Color.fromARGB(74, 0, 0, 0)),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 53, 7, 69),
                    )),
                onPressed: () {},
                child: const Text(
                  "Find My Account",
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
