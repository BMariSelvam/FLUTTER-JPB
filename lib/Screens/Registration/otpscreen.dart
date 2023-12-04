import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Screens/Registration/registrationcontroller.dart';
import 'package:pinput/pinput.dart';

import '../../Const/approutes.dart';
import '../../Const/assets.dart';
import '../../Const/mycolors.dart';
import '../../Const/myfont.dart';
import '../../Widget/backbutton.dart';
import '../../Widget/button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late RegistrationController controller;

  String? otp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.find<RegistrationController>();
  }

  ///PinPutColorTheme
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontFamily: MyFont.myFont,
      fontSize: 22,
      color: MyColors.primaryCustom,
    ),
    decoration: BoxDecoration(
      color: MyColors.textForm,
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: MyColors.grey),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "OTP Verification",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: MyColors.mainTheme,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "A combination of digits has been sent to your \nchosen OTP.",
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                  fontWeight: FontWeight.normal,
                  color: MyColors.black,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Enter the OTP",
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
              ),
              const SizedBox(height: 20),
              Center(
                child: Pinput(
                  controller: controller.pinController,
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: MyColors.primaryCustom),
                    ),
                  ),
                  onCompleted: (pin) {
                    otp = pin;
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: MyColors.mainTheme,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  ///CircularProgressIndicator need a condition to fix
                  // const SizedBox(
                  //   height: 20,
                  //   width: 20,
                  //   child: CircularProgressIndicator(),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CusBackButton(
              isLoading: false,
              onTap: () {
                Get.back();
              },
              title: 'Back',
            ),
            SubmitButton(
              isLoading: false,
              onTap: () {
                FocusScope.of(context).unfocus();
                setState(() {
                  if (controller.isEmpReg.value) {
                    controller.empVerifyOtp(otp);
                  } else if (controller.isMaidReg.value) {
                    controller.helperVerifyOtp(otp);
                  }
                });
              },
              title: 'Verify',
            ),
          ],
        ),
      ),
    );
  }
}
