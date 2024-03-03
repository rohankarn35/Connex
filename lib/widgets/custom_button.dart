import 'package:flutter/material.dart';

class CustomButton {
  Widget customButton(String buttonText, VoidCallback tapFunction) {
    return GestureDetector(
      
      onTap: tapFunction,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
           buttonText,
            style: TextStyle(
              color: Color(0xFFD6426C),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
