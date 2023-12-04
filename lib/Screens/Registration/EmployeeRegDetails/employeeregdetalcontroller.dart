import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Const/approutes.dart';
import '../../../Helper/api.dart';
import '../../../Helper/apiservice.dart';
import '../../../Helper/networkmanager.dart';
import '../../../Helper/preferenceHelper.dart';
import '../../../Widget/successfullyscreen.dart';
import '../../../modelcalss/EmployerDataFormModel.dart';
import '../../Login/loginscreen.dart';

class EmployeeRegDetailController extends GetxController with StateMixin {
  RxBool isLoading = false.obs;

  TextEditingController empNameController = TextEditingController();
  TextEditingController empNationalityController = TextEditingController();
  TextEditingController empNRICController = TextEditingController();
  TextEditingController empPassportController = TextEditingController();
  TextEditingController empDobController = TextEditingController();

  TextEditingController empContactPersonController = TextEditingController();
  TextEditingController empMobileNoController = TextEditingController();
  TextEditingController empHomeNoController = TextEditingController();
  TextEditingController empEmailController = TextEditingController();

  TextEditingController empHousingTypeController = TextEditingController();
  TextEditingController empExpectedJobScopeController = TextEditingController();
  TextEditingController empNoOfBedRoomController = TextEditingController();
  TextEditingController empHouseController = TextEditingController();

  TextEditingController empPasswordController = TextEditingController();
  TextEditingController empConfirmPasswordController = TextEditingController();
  TextEditingController empSmsContactController = TextEditingController();

  final empDetailKey = GlobalKey<FormState>();

  bool isPersonalDetailClick = true;
  bool isContactDetailClick = true;
  bool isJobScopesClick = true;
  bool isAccountDetails = true;

  bool isChecked = false;
  int? isSelectedRadio;

  late final EmployerDataFormModel employerDataFormModel =
      EmployerDataFormModel();

  empPostRegistration() async {
    isLoading.value = true;
    ApiService.employerRegistration(
            employerDataFormModel: employerDataFormModel)
        .then((apiResponse) async {
      isLoading.value = false;
      if (apiResponse.apiResponseModel != null) {
        if (apiResponse.apiResponseModel!.status) {
          print("Success");
        } else {
          String? message = apiResponse.apiResponseModel?.message;
          PreferenceHelper.showSnackBar(context: Get.context!, msg: message);
        }
      } else {
        PreferenceHelper.showSnackBar(
            context: Get.context!, msg: apiResponse.error);
      }
    });
  }
}
