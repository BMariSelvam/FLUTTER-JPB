import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/employerselectwidget.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Helper/inputformator.dart';
import '../../../Widget/textformfield.dart';
import 'employercontactdetailcontroller.dart';

class EmployerContactDetailScreen extends StatefulWidget {
  const EmployerContactDetailScreen({super.key});

  @override
  State<EmployerContactDetailScreen> createState() =>
      _EmployerContactDetailScreenState();
}

class _EmployerContactDetailScreenState
    extends State<EmployerContactDetailScreen> {
  late EmployerContactDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerContactDetailController());
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
              "Contact Details",
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
                text: "Contact Person",
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
              controller: controller.empContactPersonController,
              inputFormatters: [],
              hintText: "Contact Person",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Contact Person";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Mobile No.",
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
              controller: controller.empMobileNoController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Mobile No.",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Mobile No.";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Home No",
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
              controller: controller.empHomeNoController,
              inputFormatters: [],
              hintText: "Home No",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Home No";
                } else {
                  return null;
                }
              },
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
              hintText: "emailme@gmail.com",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Valid Mail";
                } else if (!validateEmail(value)) {
                  return "Invalid Email";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
