import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperAccountDetailController extends GetxController with StateMixin {
  bool isSelectClick = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController smsContactNumberController = TextEditingController();
}
