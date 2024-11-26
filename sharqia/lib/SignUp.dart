import 'package:flutter/material.dart';
import 'package:sharqia/Login.dart';

enum Gender { male, female }

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  Gender? _selectedGender;
  bool _isPasswordHidden = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 53, 7, 69),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "User Name",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 53, 7, 69),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 53, 7, 69),
                            )),
                        labelText: "First Name",
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 53, 7, 69),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 53, 7, 69),
                            )),
                        labelText: "Last Name",
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Age",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 53, 7, 69),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 53, 7, 69))),
                        labelText: "Day",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 53, 7, 69)),
                        hintText: "Enter",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 53, 7, 69),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 53, 7, 69))),
                        labelText: "Month",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 53, 7, 69)),
                        hintText: "Enter",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: const Color.fromARGB(255, 53, 7, 69),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 53, 7, 69))),
                        labelText: "Year",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 53, 7, 69)),
                        hintText: "Enter",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 53, 7, 69),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 53, 7, 69),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 7,
              ),
              TextField(
                cursorColor: const Color.fromARGB(255, 53, 7, 69),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69))),
                  labelText: "Email",
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                  hintText: "Enter Email",
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
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 7,
              ),
              TextField(
                cursorColor: const Color.fromARGB(255, 53, 7, 69),
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69))),
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 53, 7, 69),
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69))),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 53, 7, 69),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: const Color.fromARGB(255, 53, 7, 69),
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 7,
              ),
              TextField(
                cursorColor: const Color.fromARGB(255, 53, 7, 69),
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69))),
                  labelText: "Confirm Password",
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 53, 7, 69),
                  ),
                  hintText: "Confirm",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 53, 7, 69))),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 53, 7, 69),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: const Color.fromARGB(255, 53, 7, 69),
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Gender",
                    style: TextStyle(
                        color: Color.fromARGB(255, 53, 7, 69),
                        fontWeight: FontWeight.bold),
                  )),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<Gender>(
                      activeColor: const Color.fromARGB(255, 53, 7, 69),
                      title: const Text("Male"),
                      value: Gender.male,
                      groupValue: _selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<Gender>(
                      activeColor: const Color.fromARGB(255, 53, 7, 69),
                      title: const Text("Female"),
                      value: Gender.female,
                      groupValue: _selectedGender,
                      onChanged: (Gender? value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          overlayColor: WidgetStatePropertyAll(Colors.black),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 53, 7, 69))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(108, 0, 0, 0)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 53, 7, 69))),
                      icon: const Icon(Icons.facebook, color: Colors.white),
                      label: const Text(
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do you have an account?",
                    style: TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                  ),
                  TextButton(
                    style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                            Color.fromARGB(141, 54, 7, 69))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
