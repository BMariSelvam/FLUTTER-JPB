import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class EmployerPersonalDetailController extends GetxController with StateMixin {
  TextEditingController empNameController = TextEditingController();
  TextEditingController empNationalityController = TextEditingController();
  TextEditingController empNRICController = TextEditingController();
  TextEditingController empPassportController = TextEditingController();
  TextEditingController empDobController = TextEditingController();
}
