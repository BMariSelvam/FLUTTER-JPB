import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployerSearchListController extends GetxController with StateMixin {
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  RxBool isReligionClick = false.obs;
  RxBool isNationalityClick = false.obs;
  RxBool isMaritalStatusClick = false.obs;
  RxBool isExperienceClick = false.obs;
  RxBool isChildCareClick = false.obs;
  RxBool isElderlyCareClick = false.obs;
  RxBool isCookingSkillsClick = false.obs;
  RxBool isLanguageClick = false.obs;

  ///RadioButton
  String? religionRadio;
  String? nationalityRadio;
  String? maritalRadio;
  String? experienceRadio;
  String? childCareRadio;
  String? elderCareRadio;
  String? cookingRadio;
  String? languageRadio;
}
