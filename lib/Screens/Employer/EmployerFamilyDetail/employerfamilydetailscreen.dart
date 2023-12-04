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
import 'employerfamilydetailcontroller.dart';

class EmployerFamilyDetailScreen extends StatefulWidget {
  const EmployerFamilyDetailScreen({super.key});

  @override
  State<EmployerFamilyDetailScreen> createState() =>
      _EmployerFamilyDetailScreenState();
}

class _EmployerFamilyDetailScreenState
    extends State<EmployerFamilyDetailScreen> {
  late EmployerFamilyDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerFamilyDetailController());
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
                "Family Details & Job Scope",
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
                    "Job Scope",
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
                      text: "Housing Type",
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
                    controller: controller.empHousingTypeController,
                    inputFormatters: [],
                    hintText: "Landed Property",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter the Housing Type";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Expected Job Scope",
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
                    controller: controller.empExpectedJobScopeController,
                    inputFormatters: [],
                    hintText: "Nothing selected",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Select any option";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Number of Bedroom in the house",
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
                    controller: controller.empNoOfBedRoomController,
                    inputFormatters: [NumericInputFormatter()],
                    keyboardType: TextInputType.number,
                    hintText: "Number of Bedroom in the house",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Number of Bedroom in house";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ));
  }
}
