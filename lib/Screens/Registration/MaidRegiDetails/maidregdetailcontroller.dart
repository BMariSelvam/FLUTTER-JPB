import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Helper/apiservice.dart';
import '../../../Helper/preferenceHelper.dart';
import '../../../modelcalss/HelperDataFormModel.dart';

class MaidRegDetailController extends GetxController with StateMixin {
  RxBool isLoading = false.obs;

  ///HelperBioDetails
  TextEditingController maidNameController = TextEditingController();
  TextEditingController maidFINNoController = TextEditingController();
  TextEditingController maidNationalityController = TextEditingController();
  TextEditingController maidPassportNoController = TextEditingController();
  TextEditingController maidPassportIssuePlaceController =
      TextEditingController();
  TextEditingController maidPassportExpiryDateController =
      TextEditingController();
  TextEditingController maidPassportIssueDateController =
      TextEditingController();
  TextEditingController maidWorkPermitNoController = TextEditingController();
  TextEditingController maidWorkPermitExpiryController =
      TextEditingController();
  TextEditingController maidReligionController = TextEditingController();
  TextEditingController maidDOBController = TextEditingController();
  TextEditingController maidMartialStatusController = TextEditingController();
  TextEditingController maidBirthPlaceController = TextEditingController();
  TextEditingController maidSpecializationController = TextEditingController();
  TextEditingController maidRepatriationAirportController =
      TextEditingController();
  TextEditingController maidStatusController = TextEditingController();
  TextEditingController maidOtherInfoController = TextEditingController();
  TextEditingController maidTrainingController = TextEditingController();

  ///HelperContact
  TextEditingController maidHomeAddressController = TextEditingController();
  TextEditingController maidHomeTelephoneController = TextEditingController();
  TextEditingController maidWhatsAppController = TextEditingController();
  TextEditingController maidViberController = TextEditingController();
  TextEditingController maidFaceBookController = TextEditingController();
  TextEditingController maidTypeController = TextEditingController();
  TextEditingController maidInformationController = TextEditingController();

  ///FamilyBackground
  TextEditingController maidFatherOccupationController =
      TextEditingController();
  TextEditingController maidMotherOccupationController =
      TextEditingController();
  TextEditingController maidFatherAgeController = TextEditingController();
  TextEditingController maidMotherAgeController = TextEditingController();
  TextEditingController maidSiblingPositionController = TextEditingController();
  TextEditingController maidNoOfBrotherController = TextEditingController();
  TextEditingController maidNoOfSisterController = TextEditingController();
  TextEditingController maidBrotherAgeController = TextEditingController();
  TextEditingController maidSisterAgeController = TextEditingController();
  TextEditingController maidHusbandNameController = TextEditingController();
  TextEditingController maidHusbandOccupationController =
      TextEditingController();
  TextEditingController maidHusbandAgeController = TextEditingController();
  TextEditingController maidNoOfChildrenController = TextEditingController();
  TextEditingController maidChildAgeController = TextEditingController();

  ///PhysicalAttribute
  TextEditingController maidComplexionController = TextEditingController();
  TextEditingController maidHeightCmController = TextEditingController();
  TextEditingController maidHeightFeetController = TextEditingController();
  TextEditingController maidWeightKgController = TextEditingController();
  TextEditingController maidWeightPoundController = TextEditingController();

  ///BookingRelatedInformation
  TextEditingController maidBasicSalaryController = TextEditingController();
  TextEditingController maidOffDayDailyRateController = TextEditingController();
  TextEditingController maidHelperFeeController = TextEditingController();
  TextEditingController maidPocketMoneyController = TextEditingController();
  TextEditingController maidSelectOffDaysController = TextEditingController();
  TextEditingController maidNoController = TextEditingController();
  TextEditingController maidAvailabilityDateController =
      TextEditingController();
  TextEditingController maidAvailabilityTimeController =
      TextEditingController();
  TextEditingController maidOtherRemarksController = TextEditingController();

  ///AccountDetails
  TextEditingController maidEmailController = TextEditingController();
  TextEditingController maidPasswordController = TextEditingController();
  TextEditingController maidConfirmPasswordController = TextEditingController();
  TextEditingController maidSmsContactNumberController =
      TextEditingController();

  bool helperBioDetails = false;
  bool helperContact = false;
  bool familyContact = false;
  bool physicalAttribute = false;
  bool bookingInformation = false;
  bool accountDetails = false;

  ///CheckBox
  bool isMaidChecked = false;

  ///Key
  final maidRegKey = GlobalKey<FormState>();

  ///Helper Data Form Post Api

  late final HelperDataFormModel helperDataFormModel = HelperDataFormModel();

  helperPostRegistration() async {
    isLoading.value = true;
    ApiService.helperRegistration(helperDataFormModel: helperDataFormModel)
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
