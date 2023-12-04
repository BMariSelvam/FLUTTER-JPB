import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';

import 'Const/approutes.dart';

String bearerToken = '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: MyColors.primaryCustom),
        // initialRoute: Routes.splashScreen,
        initialRoute: Routes.employeeRegScreen,
        getPages: pages,
      ),
    );
  }
}
