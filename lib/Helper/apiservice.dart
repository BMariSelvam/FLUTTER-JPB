import 'package:jpb/modelcalss/HelperDataFormModel.dart';

import '../modelcalss/EmployerDataFormModel.dart';
import '../modelcalss/SendOTPModel.dart';
import 'api.dart';
import 'networkmanager.dart';

class ApiService {
  ///Employer Sent OTP
  static Future<ApiResponse> sendOtp(
      {required SendOtpModel sendOtpModel}) async {
    final apiResponse = await NetworkManager.post(
        url: HttpUrl.empRegSendOTP, params: sendOtpModel.toJson());
    return apiResponse;
  }

  static Future<ApiResponse> employerRegistration(
      {required EmployerDataFormModel employerDataFormModel}) async {
    final apiResponse = await NetworkManager.post(
        url: HttpUrl.empRegistration, params: employerDataFormModel.toJson());
    return apiResponse;
  }

  static Future<ApiResponse> helperRegistration(
      {required HelperDataFormModel helperDataFormModel}) async {
    final apiResponse = await NetworkManager.post(
        url: HttpUrl.empRegistration, params: helperDataFormModel.toJson());
    return apiResponse;
  }
}
