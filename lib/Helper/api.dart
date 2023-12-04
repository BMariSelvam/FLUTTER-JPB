import 'package:flutter/material.dart';

class HttpUrl {
  static const String base = "http://154.26.130.251:283/";

  static String get baseUrl => "${base}api/";

  static String get generateToken => "${baseUrl}Token/GenerateToken";

  static String get empRegSendOTP => "${baseUrl}Employer/Register";

  static String get empVerifyOTP => "${baseUrl}Employer/VerifyOTP";

  static String get empRegistration => "${baseUrl}Employer/DataFormUpdation";

  static String get helperRegSendOTP => "${baseUrl}Helper/Register";

  static String get helperVerifyOTP => "${baseUrl}Helper/VerifyOTP";

  static String get helperRegistration => "${baseUrl}Helper/DataFormUpdation";
}
