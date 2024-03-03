import 'package:flutter/material.dart';

class CustomTextField {
  Widget customTextField(bool obscureText , String hintText, Widget prefixIcon,TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
        hintText: hintText,
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
