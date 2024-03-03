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
 late final CustomTextField customTextFormField;
  late final TextEditingController firstNameEditingController;
  late final TextEditingController lastNameEditingController;
  late final TextEditingController emailEditingController;
  late final TextEditingController createPasswordEditingController;
  late final TextEditingController confirmPasswordEditingController;
  late final CustomButton customButton;
  @override
  void initState() {
 try {
    customTextFormField = locator.get<CustomTextField>();
    firstNameEditingController = locator.get<TextEditingController>();
    lastNameEditingController = locator.get<TextEditingController>();
    emailEditingController = locator.get<TextEditingController>();
    createPasswordEditingController = locator.get<TextEditingController>();
    confirmPasswordEditingController = locator.get<TextEditingController>();
    customButton = locator.get<CustomButton>();
   
 } catch (e) {
  print(e);
   
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
                  customTextFormField.customTextField(
                     
                      "First Name",
                      const Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                      ),
                      firstNameEditingController,),
                  const SizedBox(
                    height: 10,
                  ),
              
                  customTextFormField.customTextField(
                      "Last Name",
                      const Icon(
                        Icons.person_2_rounded,
                        color: Colors.white,
                      ),
                      lastNameEditingController),
                  const SizedBox(
                    height: 10,
                  ),
                  customTextFormField.customTextField(
                      "Email",
                      const Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                      ),
                      emailEditingController,keyboardType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 10,
                  ),
                  customTextFormField.customTextField(
                      "Create Password",
                      const Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                      ),
                      createPasswordEditingController,obscureText: true),
                  const SizedBox(
                    height: 10,
                  ),
                  customTextFormField.customTextField(
                    
                      "Confirm Password",
                      const Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                      ),
                      confirmPasswordEditingController,obscureText: true),
                    const SizedBox(height: 20,),
                    customButton.customButton("Sign Up", () { print("clicked");}),
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
