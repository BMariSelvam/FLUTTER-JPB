import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/employerselectwidget.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/textformfield.dart';
import 'employerpersonaldetailcontroller.dart';

class EmployerPersonalDetailScreen extends StatefulWidget {
  const EmployerPersonalDetailScreen({super.key});

  @override
  State<EmployerPersonalDetailScreen> createState() =>
      _EmployerPersonalDetailScreenState();
}

class _EmployerPersonalDetailScreenState
    extends State<EmployerPersonalDetailScreen> {
  late EmployerPersonalDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerPersonalDetailController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Center(
          child: SizedBox(
              height: 45,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Image.asset(Assets.arrow),
              )),
        ),
        title: Column(
          children: [
            Text(
              "Personal Profile Details",
              style: TextStyle(fontFamily: MyFont.myFont),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const EmployerSelectWidget(),
            Container(
              height: 55,
              width: width(context),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                  color: MyColors.teal,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "Personal Profile Details",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    color: MyColors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Employer Name",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.red,
                    ),
                  )
                ])),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: controller.empNameController,
                  inputFormatters: [],
                  hintText: "Employer Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Valid Name";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Nationality",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.red,
                    ),
                  )
                ])),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: controller.empNationalityController,
                  inputFormatters: [],
                  hintText: "Nationality",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Select Your Nationality";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "NRIC / FIN",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.red,
                    ),
                  )
                ])),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: controller.empNRICController,
                  inputFormatters: [],
                  hintText: "NRIC / FIN",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your NRIC / FIN";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Passport - only for EP and Spass holder",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.red,
                    ),
                  )
                ])),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: controller.empPassportController,
                  inputFormatters: [],
                  hintText: "Your Passport",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your Passport";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Date of Birth",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "*",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.red,
                    ),
                  )
                ])),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: controller.empDobController,
                  inputFormatters: [],
                  hintText: "Date of Birth",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Your DOB";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
