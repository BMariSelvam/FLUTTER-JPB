import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperInterviewDetailController extends GetxController with StateMixin {
  RxBool isCurrentInterview = true.obs;
  RxBool isPassInterview = false.obs;
}
