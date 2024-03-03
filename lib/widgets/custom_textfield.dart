import 'package:flutter/material.dart';

class CustomTextField {
  Widget customTextField( String hintText, Widget prefixIcon, TextEditingController controller,{bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
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
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}
