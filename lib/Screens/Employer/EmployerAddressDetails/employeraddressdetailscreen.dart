import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Helper/inputformator.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/employerselectwidget.dart';
import '../../../Widget/textformfield.dart';
import 'employeraddressdetailcontroller.dart';

class EmployerAddressDetailsScreen extends StatefulWidget {
  const EmployerAddressDetailsScreen({super.key});

  @override
  State<EmployerAddressDetailsScreen> createState() =>
      _EmployerAddressDetailsScreenState();
}

class _EmployerAddressDetailsScreenState
    extends State<EmployerAddressDetailsScreen> {
  late EmployerAddressDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerAddressDetailController());
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
                "Address",
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
                    "Address",
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
                  text: "Postal Code",
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
                controller: controller.empPostalCodeController,
                inputFormatters: [],
                hintText: "Postal Code",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Postal Code";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Unit No",
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
                controller: controller.empUnitNoController,
                inputFormatters: [],
                hintText: "Unit No",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Unit No";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Street",
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
                controller: controller.empStreetController,
                inputFormatters: [],
                hintText: "Street",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Street";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Building",
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
                controller: controller.empBuildingController,
                inputFormatters: [],
                hintText: "Building",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Building";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Country",
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
                controller: controller.empCountryContactController,
                inputFormatters: [],
                hintText: "Country",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Country";
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
                controller: controller.empEmailContactController,
                inputFormatters: [],
                hintText: "Email",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Email";
                  } else if (!validateEmail(value)) {
                    return "Invalid Email";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              Text(
                "Other Contact",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  fontSize: 20,
                  color: MyColors.primaryCustom,
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
                controller: controller.empContactPersonContactController,
                inputFormatters: [],
                hintText: "Contact Person",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Contact Person";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Contact No",
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
                controller: controller.empContactNoController,
                inputFormatters: [NumericInputFormatter()],
                keyboardType: TextInputType.number,
                hintText: "Contact No",
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Contact No";
                  } else {
                    return null;
                  }
                },
              ),
            ],
          ),
        ));
  }
}
