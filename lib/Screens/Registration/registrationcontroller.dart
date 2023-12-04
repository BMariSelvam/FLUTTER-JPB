import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Helper/api.dart';
import 'package:jpb/Helper/apiservice.dart';

import '../../Const/approutes.dart';
import '../../Helper/networkmanager.dart';
import '../../Helper/preferenceHelper.dart';
import '../../modelcalss/EmployerDataFormModel.dart';
import '../../modelcalss/SendOTPModel.dart';

class RegistrationController extends GetxController with StateMixin {
  RxBool isLoading = false.obs;
  RxBool isEmpReg = true.obs;
  RxBool isMaidReg = false.obs;

  int? isSelectedRadio;

  final regKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final pinController = TextEditingController();

  ///Employer Sent OTP
  empSentOtp() async {
    isLoading.value = true;

    NetworkManager.post(url: HttpUrl.empRegSendOTP, params: {
      "OrgId": 1,
      "Name": nameController.text,
      "Email": emailController.text,
      "Phone": phoneNumberController.text,
      "viaOTP": "EMAIL",
    }).then((apiResponse) async {
      isLoading.value = false;
      if (apiResponse.apiResponseModel != null) {
        if (apiResponse.apiResponseModel?.status != null) {
          Get.toNamed(Routes.oTPScreen);
        } else {
          String? message = apiResponse.apiResponseModel?.message;
          PreferenceHelper.showSnackBar(msg: message);
        }
      } else {
        String? error = apiResponse.error;
        PreferenceHelper.showSnackBar(msg: error);
      }
    });
  }

  ///Employer Verify OTP
  empVerifyOtp(String? otp) async {
    isLoading.value = true;

    NetworkManager.post(url: HttpUrl.empVerifyOTP, params: {
      "OrgId": 1,
      "Email": emailController.text,
      "OTP": otp,
    }).then((apiResponse) async {
      isLoading.value = false;
      if (apiResponse.apiResponseModel != null) {
        if (apiResponse.apiResponseModel?.status != null) {
          Get.offAllNamed(Routes.employeeRegScreen);
        } else {
          String? message = apiResponse.apiResponseModel?.message;
          PreferenceHelper.showSnackBar(msg: message);
        }
      } else {
        String? error = apiResponse.error;
        PreferenceHelper.showSnackBar(msg: error);
      }
    });
  }

  ///Helper Sent OTP
  helperSentOtp() async {
    isLoading.value = true;

    NetworkManager.post(url: HttpUrl.helperRegSendOTP, params: {
      "OrgId": 1,
      "Name": nameController.text,
      "Email": emailController.text,
      "Phone": phoneNumberController.text,
      "viaOTP": "EMAIL",
    }).then((apiResponse) async {
      isLoading.value = false;
      if (apiResponse.apiResponseModel != null) {
        if (apiResponse.apiResponseModel?.status != null) {
          Get.toNamed(Routes.oTPScreen);
        } else {
          String? message = apiResponse.apiResponseModel?.message;
          PreferenceHelper.showSnackBar(msg: message);
        }
      } else {
        String? error = apiResponse.error;
        PreferenceHelper.showSnackBar(msg: error);
      }
    });
  }

  ///Helper Verify OTP
  helperVerifyOtp(String? otp) async {
    isLoading.value = true;

    NetworkManager.post(url: HttpUrl.helperVerifyOTP, params: {
      "OrgId": 1,
      "Email": emailController.text,
      "OTP": otp,
    }).then((apiResponse) async {
      isLoading.value = false;
      if (apiResponse.apiResponseModel != null) {
        if (apiResponse.apiResponseModel?.status != null) {
          Get.offAllNamed(
            Routes.maidRegScreen,
          );
        } else {
          String? message = apiResponse.apiResponseModel?.message;
          PreferenceHelper.showSnackBar(msg: message);
        }
      } else {
        String? error = apiResponse.error;
        PreferenceHelper.showSnackBar(msg: error);
      }
    });
  }
}
