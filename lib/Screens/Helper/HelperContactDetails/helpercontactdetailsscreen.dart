import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Helper/inputformator.dart';
import '../../../Widget/button.dart';
import '../../../Widget/helperselectwidget.dart';
import '../../../Widget/textformfield.dart';
import 'helpercontactdetailcontroller.dart';

class HelperContactDetailsScreen extends StatefulWidget {
  const HelperContactDetailsScreen({super.key});

  @override
  State<HelperContactDetailsScreen> createState() =>
      _HelperContactDetailsScreenState();
}

class _HelperContactDetailsScreenState
    extends State<HelperContactDetailsScreen> {
  late HelperContactDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(HelperContactDetailController());
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
        title: Text(
          "Contact Details",
          style: TextStyle(fontFamily: MyFont.myFont),
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
                  "Contact Details",
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
                text: "Home Address",
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
              controller: controller.maidHomeAddressController,
              inputFormatters: [],
              hintText: "Home Address",
              maxLine: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Home Address";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Home Telephone",
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
              controller: controller.maidHomeTelephoneController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Home Telephone",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Home Telephone";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "WhatsApp",
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
              controller: controller.maidWhatsAppController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "WhatsApp",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the WhatsApp";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Viber",
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
              controller: controller.maidViberController,
              inputFormatters: [],
              hintText: "Viber",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Viber";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Facebook",
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
              controller: controller.maidFaceBookController,
              inputFormatters: [],
              hintText: "Facebook",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Facebook";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Type",
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
              controller: controller.maidTypeController,
              inputFormatters: [],
              hintText: "WeChat",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the WeChat";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Information",
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
              controller: controller.maidInformationController,
              inputFormatters: [],
              hintText: "Information",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Information";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 40),
            Align(
                alignment: Alignment.centerRight,
                child:
                    SubmitButton(isLoading: false, onTap: () {}, title: "Save"))
          ],
        ),
      ),
    );
  }
}
