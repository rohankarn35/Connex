import 'package:dating_app/components/authentication/screens/forgot_password_screen.dart';
import 'package:dating_app/components/authentication/screens/login_screen.dart';
import 'package:dating_app/components/authentication/screens/signup_screen.dart';
import 'package:dating_app/components/welcomescreen/screens/welcome_screen.dart';
import 'package:dating_app/injection.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dating',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen()
    );
  }
}




