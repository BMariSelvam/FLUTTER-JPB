import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/myfont.dart';
import 'package:jpb/Const/size.dart';

import '../../Const/approutes.dart';
import '../../Const/assets.dart';
import '../../Helper/inputformator.dart';
import '../../Widget/button.dart';
import '../../Widget/textformfield.dart';
import '../Registration/registrationcontroller.dart';
import 'logincontroller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController controller;
  late RegistrationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(LoginController());
    _controller = Get.put(RegistrationController());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginKey,
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
                  "Login",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: MyColors.mainTheme,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Enter the Credentials",
                  style: TextStyle(
                    fontFamily: MyFont.headFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                    color: MyColors.mainTheme,
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
                  inputFormatters: [EmailInputFormatter()],
                  hintText: "Your Email Address",
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
                  controller: controller.passwordController,
                  inputFormatters: [],
                  hintText: "Password",
                  obscureText:
                      controller.isPasswordVisible.value ? false : true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          controller.isPasswordVisible.value =
                              !controller.isPasswordVisible.value;
                        });
                      },
                      icon: Icon(controller.isPasswordVisible.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Valid Password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SubmitButton(
                isLoading: false,
                onTap: () {
                  FocusScope.of(context).unfocus();
                  if (controller.loginKey.currentState!.validate()) {
                    controller.loginKey.currentState!.save();
                    if (_controller.isEmpReg.value) {
                      Get.toNamed(Routes.employeeDashBoardScreen);
                    } else {
                      Get.toNamed(Routes.helperDashBoardScreen);
                    }
                  }
                },
                title: 'Login',
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.registrationScreen);
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Don’t have an Account ? ",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.normal,
                      color: MyColors.black,
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text: "Sign Up ",
                    style: TextStyle(
                      fontFamily: MyFont.myFont,
                      fontWeight: FontWeight.bold,
                      color: MyColors.mainTheme,
                    ),
                  )
                ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
