import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/size.dart';
import 'package:jpb/Helper/inputformator.dart';
import 'package:jpb/Screens/Registration/registrationcontroller.dart';

import '../../Const/approutes.dart';
import '../../Const/assets.dart';
import '../../Const/mycolors.dart';
import '../../Const/myfont.dart';
import '../../Widget/button.dart';
import '../../Widget/textformfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late RegistrationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(RegistrationController());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.regKey,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    Assets.appLogo,
                    scale: 4,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Registration",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: MyColors.mainTheme,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: width(context),
                  height: 55,
                  decoration: BoxDecoration(
                    color: MyColors.textForm,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (controller.isEmpReg.value = true) {
                              controller.isMaidReg.value = false;
                            }
                          });
                        },
                        child: Container(
                          width: width(context) / 2.21,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0)),
                            // border: Border.all(),
                            color: controller.isEmpReg.value
                                ? MyColors.primaryCustom
                                : MyColors.textForm,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                (controller.isEmpReg.value)
                                    ? const Icon(
                                        Icons.circle,
                                        color: MyColors.textForm,
                                        size: 10,
                                      )
                                    : SizedBox(),
                                const SizedBox(width: 10),
                                Text(
                                  "Employee Registration",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: MyFont.myFont,
                                    fontWeight: FontWeight.bold,
                                    color: controller.isEmpReg.value
                                        ? MyColors.textForm
                                        : MyColors.primaryCustom,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (controller.isMaidReg.value = true) {
                              controller.isEmpReg.value = false;
                            }
                          });
                        },
                        child: Container(
                          width: width(context) / 2.21,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)),
                            // border: Border.all(),
                            color: controller.isMaidReg.value
                                ? MyColors.primaryCustom
                                : MyColors.textForm,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                (controller.isMaidReg.value)
                                    ? const Icon(
                                        Icons.circle,
                                        color: MyColors.textForm,
                                        size: 10,
                                      )
                                    : SizedBox(),
                                const SizedBox(width: 10),
                                Text(
                                  "Maid Registration",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: MyFont.myFont,
                                    fontWeight: FontWeight.bold,
                                    color: controller.isMaidReg.value
                                        ? MyColors.textForm
                                        : MyColors.primaryCustom,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Enter Details",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: MyColors.mainTheme,
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Name",
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
                  controller: controller.nameController,
                  inputFormatters: const [],
                  hintText: "Your Name",
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
                    text: "Email Address",
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
                  controller: controller.emailController,
                  inputFormatters: const [],
                  hintText: "Your Email Address",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Valid Email";
                    } else if (!validateEmail(value)) {
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
                    text: "Phone Number",
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
                  controller: controller.phoneNumberController,
                  inputFormatters: [NumericInputFormatter()],
                  keyboardType: TextInputType.number,
                  hintText: "Your Phone Number",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Valid Phone Number";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Select Option to Receive OTP",
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
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: controller.isSelectedRadio,
                          onChanged: (int? value) {
                            setState(() {
                              controller.isSelectedRadio = value;
                            });
                          },
                        ),
                        Text(
                          "via Email",
                          style: TextStyle(
                            fontFamily: MyFont.myFont,
                            fontWeight: FontWeight.normal,
                            color: MyColors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SubmitButton(
                          isLoading: false,
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            if (controller.isSelectedRadio == null) {
                              Get.showSnackbar(const GetSnackBar(
                                message: "Please Select Option to Receive OTP",
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                borderRadius: 10.0,
                                snackPosition: SnackPosition.TOP,
                                duration: Duration(seconds: 3),
                                backgroundColor: MyColors.primaryCustom,
                                icon: Icon(
                                  Icons.error,
                                  color: MyColors.textForm,
                                ),
                              ));
                            }
                            if (controller.regKey.currentState!.validate()) {
                              if (controller.isEmpReg.value) {
                                controller.empSentOtp();
                              } else if (controller.isMaidReg.value) {
                                controller.helperSentOtp();
                              }
                            }
                          },
                          title: 'Next',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
