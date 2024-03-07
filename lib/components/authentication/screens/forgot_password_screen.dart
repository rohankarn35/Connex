import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late final CustomTextField _customTextFormField;
  late final CustomButton _customButton;
  late final TextEditingController _emailEditingController;

@override
  void initState() {
    _customButton = locator.get<CustomButton>();
    _customTextFormField = locator.get<CustomTextField>();
    _emailEditingController = locator.get<TextEditingController>();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            const Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _customTextFormField.customTextField("Email", Icon(Icons.email_rounded,color: Colors.white,), _emailEditingController)
            ),
            const SizedBox(height: 40),
           Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: _customButton.customButton("Send Reset Link", (){}),
            ),
          ],
        ),
      ),
    );
  }
}