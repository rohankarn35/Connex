import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class WelcomeProfileSetupScreen extends StatefulWidget {
  const WelcomeProfileSetupScreen({super.key});

  @override
  State<WelcomeProfileSetupScreen> createState() =>
      _WelcomeProfileSetupScreenState();
}

class _WelcomeProfileSetupScreenState extends State<WelcomeProfileSetupScreen> {
  late final CustomButton _custombutton;

  @override
  void initState() {
    _custombutton = locator.get<CustomButton>();
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const SizedBox(height: 20),
                const Text(
                  "Thank you for signing up!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                          'Setup your profile in just a few steps!!'),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
                const SizedBox(height: 50),
                const Spacer(),
                _custombutton.customButton("Setup Profile", () {}),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
