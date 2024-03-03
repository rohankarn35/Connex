import 'package:flutter/material.dart';

class UpdateProfilePhotoScreen extends StatefulWidget {
  const UpdateProfilePhotoScreen({super.key});

  @override
  State<UpdateProfilePhotoScreen> createState() => _UpdateProfilePhotoScreenState();
}

class _UpdateProfilePhotoScreenState extends State<UpdateProfilePhotoScreen> {
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
      ),
    );
  }
}