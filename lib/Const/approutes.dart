import 'package:get/get.dart';

import '../Screens/Employer/EmployerDashBoard/employerdashboardscreen.dart';
import '../Screens/Employer/EmployerProfile/employerprofilescreen.dart';
import '../Screens/Employer/EmployerSearch/EmployerSearchList/employersearchlistscreen.dart';
import '../Screens/Employer/EmployerSearch/EmployerSearchResult/employersearchresultscreen.dart';
import '../Screens/Helper/HelperAccountDetails/helperaccountdetailscreen.dart';
import '../Screens/Helper/HelperDashBoard/helperdashboardscreen.dart';
import '../Screens/Login/loginscreen.dart';
import '../Screens/Registration/EmployeeRegDetails/employeeregdetailsscreen.dart';
import '../Screens/Registration/MaidRegiDetails/maidregdetailsscreen.dart';
import '../Screens/Registration/otpscreen.dart';
import '../Screens/Registration/registrationscreen.dart';
import '../Screens/Splash/splashscreen.dart';

class Routes {
  static const String splashScreen = "/SplashScreen";
  static const String loginScreen = "/LoginScreen";
  static const String registrationScreen = "/RegistrationScreen";
  static const String oTPScreen = "/OTPScreen";
  static const String maidRegScreen = "/MaidRegScreen";
  static const String employeeRegScreen = "/EmployeeRegScreen";
  static const String helperDashBoardScreen = "/HelperDashBoardScreen";
  static const String helperAccountDetailsScreen =
      "/HelperAccountDetailsScreen";
  static const String employeeDashBoardScreen = "/EmployeeDashBoardScreen";
  static const String employerSearchListScreen = "/EmployerSearchListScreen";
  static const String employerSearchResultScreen =
      "/EmployerSearchResultScreen";
  static const String employerProfilerScreen = "/EmployerProfilerScreen";
}

final pages = [
  GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
  GetPage(
      name: Routes.helperDashBoardScreen,
      page: () => const HelperDashBoardScreen()),
  GetPage(name: Routes.loginScreen, page: () => const LoginScreen()),
  GetPage(
      name: Routes.registrationScreen, page: () => const RegistrationScreen()),
  GetPage(name: Routes.oTPScreen, page: () => const OTPScreen()),
  GetPage(name: Routes.maidRegScreen, page: () => const MaidRegScreen()),
  GetPage(
      name: Routes.employeeRegScreen, page: () => const EmployeeRegScreen()),
  GetPage(
      name: Routes.helperDashBoardScreen,
      page: () => const HelperDashBoardScreen()),
  GetPage(
      name: Routes.helperAccountDetailsScreen,
      page: () => const HelperAccountDetailsScreen()),
  GetPage(
      name: Routes.employeeDashBoardScreen,
      page: () => const EmployeeDashBoardScreen()),
  GetPage(
      name: Routes.employerSearchListScreen,
      page: () => const EmployerSearchListScreen()),
  GetPage(
      name: Routes.employerSearchResultScreen,
      page: () => const EmployerSearchResultScreen()),
  GetPage(
      name: Routes.employerProfilerScreen,
      page: () => const EmployerProfilerScreen()),
];
