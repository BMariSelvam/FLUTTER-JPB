import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployerInterviewDetailController extends GetxController with StateMixin {
  RxBool isCurrentInterview = true.obs;
  RxBool isPassInterview = false.obs;
}
