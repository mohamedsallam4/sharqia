import 'package:flutter/material.dart';
import 'package:sharqia/ForgetPassword.dart';
import 'package:sharqia/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordHidden = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(" LOG IN ",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 53, 7, 69),
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 50,
            ),
            TextField(
              cursorColor: const Color.fromARGB(255, 53, 7, 69),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 53, 7, 69))),
                labelText: "USer Name",
                labelStyle:
                    const TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                hintText: "Username or Email",
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
                    _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                  Color.fromARGB(141, 54, 7, 69),
                )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const forgrtPassword()));
                },
                child: const Text("Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 53, 7, 69),
                    )),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 53, 7, 69))),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => homePage()),
                      );
                    },
                    child: const Text("Login"),
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
                            Color.fromARGB(108, 255, 255, 255)),
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
                  "Don't have an account?",
                  style: TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromARGB(141, 54, 7, 69))),
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color.fromARGB(255, 53, 7, 69)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
