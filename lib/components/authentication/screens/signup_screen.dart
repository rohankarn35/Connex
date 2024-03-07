import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
 late final CustomTextField _customTextFormField;
  late final TextEditingController _firstNameEditingController;
  late final TextEditingController _lastNameEditingController;
  late final TextEditingController _emailEditingController;
  late final TextEditingController _createPasswordEditingController;
  late final TextEditingController _confirmPasswordEditingController;
  late final CustomButton _customButton;
  @override
  void initState() {
 try {
    _customTextFormField = locator.get<CustomTextField>();
    _firstNameEditingController = locator.get<TextEditingController>();
    _lastNameEditingController = locator.get<TextEditingController>();
    _emailEditingController = locator.get<TextEditingController>();
    _createPasswordEditingController = locator.get<TextEditingController>();
    _confirmPasswordEditingController = locator.get<TextEditingController>();
    _customButton = locator.get<CustomButton>();
   
 } catch (e) {
    print("Error: $e");
   
 }
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                children: [
                    const SizedBox(height: 60,),
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _customTextFormField.customTextField(
                     
                      "First Name",
                      const Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                      ),
                      _firstNameEditingController,),
                  const SizedBox(
                    height: 10,
                  ),
              
                  _customTextFormField.customTextField(
                      "Last Name",
                      const Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                      ),
                      _lastNameEditingController),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField.customTextField(
                      "Email",
                      const Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                      ),
                      _emailEditingController,keyboardType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField.customTextField(
                      "Create Password",
                      const Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                      ),
                      _createPasswordEditingController,obscureText: true),
                  const SizedBox(
                    height: 10,
                  ),
                  _customTextFormField.customTextField(
                    
                      "Confirm Password",
                      const Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                      ),
                      _confirmPasswordEditingController,obscureText: true),
                    const SizedBox(height: 20,),
                    _customButton.customButton("Sign Up", () { print("clicked");}),
                     const SizedBox(
                    height: 20,
                  ),
                    GestureDetector(
                    onTap: () {
                      // Navigate to sign up screen
                    },
                    child: const Text(
                      "Already have an account? Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
