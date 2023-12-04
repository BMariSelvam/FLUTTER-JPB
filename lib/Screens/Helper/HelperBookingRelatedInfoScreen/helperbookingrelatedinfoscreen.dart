import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/button.dart';
import '../../../Widget/helperselectwidget.dart';
import '../../../Widget/textformfield.dart';
import 'helperbookingrelatedinfocontroller.dart';

class HelperBookingRelatedInfoScreen extends StatefulWidget {
  const HelperBookingRelatedInfoScreen({super.key});

  @override
  State<HelperBookingRelatedInfoScreen> createState() =>
      _HelperBookingRelatedInfoScreenState();
}

class _HelperBookingRelatedInfoScreenState
    extends State<HelperBookingRelatedInfoScreen> {
  late BookingRelatedInfoController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(BookingRelatedInfoController());
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
          "Booking Info",
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
                  "Booking Related Information",
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
                text: "Placement Fee (\$)",
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
              controller: controller.maidPlacementFeeController,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              hintText: "Placement Fee",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Placement Fee";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Basic Salary (\$)",
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
              controller: controller.maidBasicSalaryController,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              hintText: "Basic Salary",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Basic Salary";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Off Day Daily Rate (\$)",
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
              controller: controller.maidOffDayDailyRateController,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              hintText: "Off Day Daily Rate",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Off Day Daily Rate";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Helper Fee (\$)",
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
              controller: controller.maidHelperFeeController,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              hintText: "Helper Fee",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Helper Fee";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Pocket Money (\$)",
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
              controller: controller.maidPocketMoneyController,
              inputFormatters: [],
              hintText: "Pocket Money",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Pocket Money";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Select Off Days",
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
              controller: controller.maidSelectOffDaysController,
              inputFormatters: [],
              hintText: "Select Off Days",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Select Off Days";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Enter Off Days",
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
              controller: controller.maidNoController,
              inputFormatters: [],
              keyboardType: TextInputType.number,
              hintText: "Enter Off Days",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Off Days";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Availability of FDW to be Interview by'
              ' Prospective Employer',
              style: TextStyle(
                fontFamily: MyFont.headFont,
                color: MyColors.primaryCustom,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Available Date (SGT)",
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
              controller: controller.maidAvailabilityDateController,
              inputFormatters: [],
              hintText: "DD/MM/YYYY",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Available Date (SGT)";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Available Time (SGT)",
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
              controller: controller.maidAvailabilityTimeController,
              inputFormatters: [],
              hintText: "Available Time (SGT)",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Available Time (SGT)";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Other Remarks",
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
              controller: controller.maidOtherRemarksController,
              inputFormatters: [],
              maxLine: 5,
              hintText: "Other Remarks",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Other Remarks";
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
