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
import 'helperfamilybackgroundcontroller.dart';

class HelperFamilyBackgroundScreen extends StatefulWidget {
  const HelperFamilyBackgroundScreen({super.key});

  @override
  State<HelperFamilyBackgroundScreen> createState() =>
      _HelperFamilyBackgroundScreenState();
}

class _HelperFamilyBackgroundScreenState
    extends State<HelperFamilyBackgroundScreen> {
  late HelperFamilyBackgroundController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(HelperFamilyBackgroundController());
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
          "Family Details",
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
                  "Family Details",
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
                text: "Father Occupation",
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
              controller: controller.maidFatherOccupationController,
              inputFormatters: [],
              hintText: "Father Occupation",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Father Occupation";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Mother Occupation",
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
              controller: controller.maidMotherOccupationController,
              inputFormatters: [],
              hintText: "Mother Occupation",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Mother Occupation";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Father Age",
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
              controller: controller.maidFatherAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Father Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Father Age";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Mother Age",
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
              controller: controller.maidMotherAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Mother Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Mother Age";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Siblings Position",
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
              controller: controller.maidSiblingPositionController,
              inputFormatters: [],
              hintText: "Siblings Position",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Siblings Position";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "No. of Brother",
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
              controller: controller.maidNoOfBrotherController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "No. of Brother",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the No. of Brother";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "No. of Sister",
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
              controller: controller.maidNoOfSisterController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "No. of Sister",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the No. of Sister";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Brother Age",
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
              controller: controller.maidBrotherAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Brother Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Brother Age";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Sister Age",
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
              controller: controller.maidSisterAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Sister Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Sister Age";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Husband Name",
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
              controller: controller.maidHusbandNameController,
              inputFormatters: [],
              hintText: "Husband Name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Husband Name";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Husband Occupation",
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
              controller: controller.maidHusbandOccupationController,
              inputFormatters: [],
              hintText: "Husband Occupation",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Husband Occupation";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Husband Age",
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
              controller: controller.maidHusbandAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Husband Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Husband Age";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "No. Of Children",
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
              controller: controller.maidNoOfChildrenController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "No. Of Children",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the No. Of Children";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Child Age",
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
              controller: controller.maidChildAgeController,
              inputFormatters: [NumericInputFormatter()],
              keyboardType: TextInputType.number,
              hintText: "Child Age",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Child Age";
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
