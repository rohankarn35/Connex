import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SchoolSetupScreen extends StatefulWidget {
  const SchoolSetupScreen({super.key});

  @override
  State<SchoolSetupScreen> createState() => _SchoolSetupScreenState();
}

class _SchoolSetupScreenState extends State<SchoolSetupScreen> {
  late final CustomButton _customButton;
  late final CustomTextField _customTextField;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _customButton = locator.get<CustomButton>();
    _customTextField = locator.get<CustomTextField>();
    _textEditingController = locator.get<TextEditingController>();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Spacer(),
              const Text(
                "Enter the current School/Organization",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customTextField.customTextField(
                    "Enter your school/organization",
                    const Icon(
                      Icons.school_rounded,
                      color: Colors.white,
                    ),
                    _textEditingController),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _customButton.customButton("Next", () {}),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
