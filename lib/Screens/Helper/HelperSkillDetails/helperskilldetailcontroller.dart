import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HelperSkillDetailController extends GetxController with StateMixin {
  ///Children
  List<int?> isChildrenCareSelectedRadio = List.generate(4, (index) => null);

  List<int?> isChildrenCareExperienceSelectedRadio =
      List.generate(4, (index) => null);

  ///Elder
  List<int?> isElderSelectedRadio = List.generate(2, (index) => null);

  List<int?> isElderSelectedRadioExperienceSelectedRadio =
      List.generate(2, (index) => null);

  ///Disabled
  List<int?> isDisabledSelectedRadio = List.generate(4, (index) => null);

  List<int?> isDisabledSelectedRadioExperienceSelectedRadio =
      List.generate(4, (index) => null);

  ///HouseWork
  int? houseworkRadio;
  int? houseworkExperienceRadio;

  ///HouseWork
  int? cookingRadio;
  int? cookingExperienceRadio;

  ///TextEditingController
  TextEditingController cuisineController = TextEditingController();
}
