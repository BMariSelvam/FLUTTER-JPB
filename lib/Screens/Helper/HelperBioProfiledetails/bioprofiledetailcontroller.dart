import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BioProfileDetailController extends GetxController with StateMixin {
  ///RadioButton
  int? isSelectedRadio;

  ///BioProfileDetails
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

  ///PhysicalAttribute
  TextEditingController maidComplexionController = TextEditingController();
  TextEditingController maidHeightCmController = TextEditingController();
  TextEditingController maidHeightFeetController = TextEditingController();
  TextEditingController maidWeightKgController = TextEditingController();
  TextEditingController maidWeightPoundController = TextEditingController();
}
