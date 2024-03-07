import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final CustomButton _customButton;
  late final CustomTextField _customTextFormField;
  late final TextEditingController _emailEditingController;
  late final TextEditingController _passwordEditingController;

  @override
  void initState() {
    _customButton = locator.get<CustomButton>();
    _customTextFormField = locator.get<CustomTextField>();
    _emailEditingController = locator.get<TextEditingController>();
    _passwordEditingController = locator.get<TextEditingController>();

    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 238, 118, 118),
              Colors.pink,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
              
                  _customTextFormField.customTextField(
                      "Email",
                      const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      _emailEditingController),
                  const SizedBox(height: 20),
                  _customTextFormField.customTextField(
                      "Password",
                      const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      _passwordEditingController, obscureText: true),
                 
                  const SizedBox(height: 10),
                  const SizedBox(height: 15),
                  _customButton.customButton("Login", () {}),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      // Navigate to sign up screen
                    },
                    child: const Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  _customButton.customButton("Login With Phone Number", () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
