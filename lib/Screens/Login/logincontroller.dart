import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin {
  RxBool isPasswordVisible = false.obs;

  final loginKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
