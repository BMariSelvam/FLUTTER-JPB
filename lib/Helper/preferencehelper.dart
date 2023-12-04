import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:intl/intl.dart';

import 'constant.dart';

class PreferenceHelper {
  static void print(dynamic value) {
    if (value != null && Constant.showLog) {
      debugPrint(value);
    }
  }

  static void log(dynamic value) {
    if (value != null && Constant.showLog) {
      final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
      pattern.allMatches(value).forEach((match) => debugPrint(match.group(0)));
    }
  }

  static void showSnackBar(
      {BuildContext? context, String? msg, Duration? duration}) {
    if (msg != null && msg.isNotEmpty) {
      Get.showSnackbar(GetSnackBar(
        message: msg,
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        borderRadius: 10.0,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
      ));
    }
  }
}
