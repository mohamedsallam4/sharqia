import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<StatefulWidget> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 53, 7, 69),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 253, 238),
        child: Column(children: [
          const SizedBox(
            height: 130,
          ),
          const Text(
            " LOG IN ",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 53, 7, 69)),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                color: Color.fromARGB(255, 53, 7, 69),
                size: 25,
              ),
              Expanded(
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 53, 7, 69),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    label: const Text("User Name",
                        style:
                            TextStyle(color: Color.fromARGB(255, 53, 7, 69))),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69)),
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 53, 7, 69),
                size: 25,
              ),
              Expanded(
                child: TextField(
                  obscureText: true,
                  cursorColor: const Color.fromARGB(255, 53, 7, 69),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    label: const Text("Password",
                        style:
                            TextStyle(color: Color.fromARGB(255, 53, 7, 69))),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69)),
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(" Forget Password"),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 53, 7, 69))),
                  onPressed: () {},
                  child: Text(
                    " Log in ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 253, 238),
                    ),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
