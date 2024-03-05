import 'package:dating_app/components/profileSetup/screens/preferenceSelectScreen.dart';
import 'package:flutter/material.dart';

class CustomRadio {
  // ignore: non_constant_identifier_names
  Widget customRadio(String genderText, GenderType? groupValue, GenderType value, ValueChanged<GenderType?> onChanged) {
    return Expanded(
      child: RadioListTile<GenderType>(
        activeColor: Colors.white,
        dense: false,
        selectedTileColor: Colors.green.withOpacity(0.3),
        contentPadding: const EdgeInsets.all(10),
        
        title: Text(
          genderText,
          style: const TextStyle(color: Colors.white),
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
    
      ),
    );
  }
}
