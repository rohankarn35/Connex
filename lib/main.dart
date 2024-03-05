import 'package:dating_app/components/authentication/screens/signup_screen.dart';
import 'package:dating_app/components/profileSetup/screens/allSetScreen.dart';
import 'package:dating_app/components/profileSetup/screens/hobbiesscreen.dart';
import 'package:dating_app/components/profileSetup/screens/preferenceSelectScreen.dart';
import 'package:dating_app/components/profileSetup/screens/updateProfilePhoto.dart';
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
      title: 'Connex',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AllSetScreen()
    );
  }
}




