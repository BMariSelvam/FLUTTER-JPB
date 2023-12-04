import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperMedicalDetailController extends GetxController with StateMixin {
  int? isSelectedRadio1;
  List<int?> isSelectedRadio = List.generate(10, (index) => null);

  List<int?> isDietarySelectedRadio = List.generate(2, (index) => null);

  List<int?> isFoodPreferenceSelectedRadio = List.generate(2, (index) => null);

  TextEditingController diseaseOtherController = TextEditingController();
  TextEditingController dietaryOtherController = TextEditingController();
  TextEditingController foodPreferenceOtherController = TextEditingController();
}
