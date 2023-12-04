import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingRelatedInfoController extends GetxController with StateMixin {
  ///BookingRelatedInformation
  TextEditingController maidBasicSalaryController = TextEditingController();
  TextEditingController maidPlacementFeeController = TextEditingController();
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
}
