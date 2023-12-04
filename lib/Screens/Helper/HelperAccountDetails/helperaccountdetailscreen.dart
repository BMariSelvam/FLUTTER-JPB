import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/size.dart';
import 'package:jpb/Widget/button.dart';

import '../../../Const/assets.dart';
import '../../../Const/myfont.dart';
import '../../../Helper/inputformator.dart';
import '../../../Widget/helperselectwidget.dart';
import '../../../Widget/textformfield.dart';
import '../HelperDashBoard/helperdashboardcontroller.dart';
import 'helperaccountdetailController.dart';

class HelperAccountDetailsScreen extends StatefulWidget {
  const HelperAccountDetailsScreen({super.key});

  @override
  State<HelperAccountDetailsScreen> createState() =>
      _HelperAccountDetailsScreenState();
}

class _HelperAccountDetailsScreenState
    extends State<HelperAccountDetailsScreen> {
  late HelperAccountDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(HelperAccountDetailController());
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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HelperSelectWidget(),
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
                  text: "Email Address",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.black,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: 5)),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.red,
                  ),
                )
              ])),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: controller.emailController,
                inputFormatters: [EmailInputFormatter()],
                hintText: "Email Address",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Valid Mail";
                  } else if (!validateEmail(value)) {
                    return "Invalid Mail";
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
                  text: "",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.red,
                  ),
                )
              ])),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: controller.passwordController,
                inputFormatters: [],
                hintText: "Password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Confirmed Password",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.black,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: 5)),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.red,
                  ),
                )
              ])),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: controller.confirmPasswordController,
                inputFormatters: [],
                hintText: "Confirm Password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Confirm Password";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Sms Contact Number",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.black,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: 5)),
                TextSpan(
                  text: "",
                  style: TextStyle(
                    fontFamily: MyFont.myFont,
                    fontWeight: FontWeight.normal,
                    color: MyColors.red,
                  ),
                )
              ])),
              const SizedBox(height: 10),
              CustomTextFormField(
                controller: controller.smsContactNumberController,
                inputFormatters: [NumericInputFormatter()],
                hintText: "Contact Number",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Sms Contact Number";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.centerRight,
                  child: SubmitButton(
                      isLoading: false, onTap: () {}, title: "Save"))
            ],
          ),
        ));
  }
}
