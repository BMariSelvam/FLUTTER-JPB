import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

bool validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length < 7) {
    return false;
  } else {
    return true;
  }
}

bool validatePassword(String value) {
  if (value.length < 6) {
    return false;
  } else {
    return true;
  }
}

bool validateEmail(String value) {
  String pattern =
      r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.(com|net|org|edu|gov|mil|biz|info|in))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return false;
  } else {
    return true;
  }
}

class NumericInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-numeric characters from the new value
    String filteredValue = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Return the updated value with the numeric characters only
    return TextEditingValue(
      text: filteredValue,
      selection: TextSelection.collapsed(offset: filteredValue.length),
    );
  }
}

class AlphabeticInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-alphabetic characters from the new value
    // String filteredValue = newValue.text.replaceAll(RegExp(r'[^a-zA-Z]'), '');
    String filteredValue = newValue.text.replaceAll(RegExp(r'[^a-zA-Z\s]'), '');

    // Return the updated value with alphabetic characters only
    return TextEditingValue(
      text: filteredValue,
      selection: TextSelection.collapsed(offset: filteredValue.length),
    );
  }
}

class AlphabeticSpaceDotInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Allow only alphabetic characters, spaces, and dot '.' symbols
    String newText = newValue.text.replaceAll(RegExp(r'[^a-zA-Z .]'), '');

    return newValue.copyWith(text: newText);
  }
}

class EmailInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Allow only valid email characters (case-insensitive)
    String newText = newValue.text
        .replaceAll(RegExp(r'[^a-zA-Z0-9@._-]', caseSensitive: false), '');

    newText = newText.toLowerCase();

    return newValue.copyWith(text: newText);
  }
}

class AlphanumericInputFormatter extends TextInputFormatter {
  final RegExp _regex = RegExp(r'^[a-zA-Z0-9]*$');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (_regex.hasMatch(newValue.text)) {
      return newValue;
    } else {
      // If the input doesn't match the regex, return the old value.
      return oldValue;
    }
  }
}
