import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  late final CustomButton _customButton;
  late final CustomTextField _customTextField;
  late final TextEditingController _mobilenumberEditingController;
  @override
  void initState() {
    _customTextField = locator.get<CustomTextField>();
    _customButton = locator.get<CustomButton>();
    _mobilenumberEditingController = locator.get<TextEditingController>();
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
        )),
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
                    "Mobile Number",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  _customTextField.customTextField(
                      "Enter your mobile number",
                      const Icon(
                        Icons.phone_android_rounded,
                        color: Colors.white,
                      ),
                      _mobilenumberEditingController,keyboardType: TextInputType.number),
                      const SizedBox(height: 20,),
                      _customButton.customButton("Verify Mobile Number", () { })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
