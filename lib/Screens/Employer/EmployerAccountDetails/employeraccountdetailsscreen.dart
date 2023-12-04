import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Helper/inputformator.dart';
import '../../../Widget/employerselectwidget.dart';
import '../../../Widget/textformfield.dart';
import 'employeraccountdetailcontroller.dart';

class EmployerAccountDetailsScreen extends StatefulWidget {
  const EmployerAccountDetailsScreen({super.key});

  @override
  State<EmployerAccountDetailsScreen> createState() =>
      _EmployerAccountDetailsScreenState();
}

class _EmployerAccountDetailsScreenState
    extends State<EmployerAccountDetailsScreen> {
  late EmployerAccountDetailsController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerAccountDetailsController());
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
              "Account Details",
              style: TextStyle(fontFamily: MyFont.myFont),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Account Details",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    color: MyColors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Email",
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
              controller: controller.empEmailController,
              inputFormatters: [],
              hintText: "xxxxxxxxxxxx@gmail.com",
              readOnly: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Valid Mail";
                } else if (validateEmail(value)) {
                  return "Invalid Email";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Password",
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
              controller: controller.empPasswordController,
              inputFormatters: [],
              // hintText: "",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Password";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Confirm Password",
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
              controller: controller.empConfirmPasswordController,
              inputFormatters: [],
              // hintText: "",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Confirm Password";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "SMS Contact Number",
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
              controller: controller.empSmsContactController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Contact Number";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
