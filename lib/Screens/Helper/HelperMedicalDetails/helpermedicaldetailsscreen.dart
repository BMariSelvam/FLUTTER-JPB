import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/helperselectwidget.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/button.dart';
import '../../../Widget/constructors.dart';
import '../../../Widget/constructors.dart';
import '../../../Widget/textformfield.dart';
import 'helpermedicalcontroller.dart';

class HelperMedicalDetailsScreen extends StatefulWidget {
  const HelperMedicalDetailsScreen({super.key});

  @override
  State<HelperMedicalDetailsScreen> createState() =>
      _HelperMedicalDetailsScreenState();
}

class _HelperMedicalDetailsScreenState
    extends State<HelperMedicalDetailsScreen> {
  late HelperMedicalDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(HelperMedicalDetailController());
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
                "Medical Details",
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
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    color: MyColors.teal,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.5),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(2),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Text(
                            'SL.NO',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            'QUESTION',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.white,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            'ANSWER',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.white,
                            ),
                          )),
                        ),
                      ],
                    ),
                    // Add more rows as needed
                  ],
                ),
              ),
              const SizedBox(height: 10),
              medicalListView(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Others",
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
                controller: controller.diseaseOtherController,
                inputFormatters: const [],
                hintText: "Others",
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Dietary Restrictions",
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
              dietaryList(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Others",
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
                controller: controller.dietaryOtherController,
                inputFormatters: const [],
                hintText: "Others",
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Food Handing Preference",
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
              foodPreferenceList(),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Others",
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
                controller: controller.foodPreferenceOtherController,
                inputFormatters: const [],
                hintText: "Others",
              ),
              const SizedBox(height: 40),
              Align(
                  alignment: Alignment.centerRight,
                  child: SubmitButton(
                      isLoading: false, onTap: () {}, title: "Save"))
            ],
          ),
        ));
  }

  ///QuestionsList
  List<MedicalDetailList> medicalDetailList = [
    MedicalDetailList(text: 'Allergies (if any)'),
    MedicalDetailList(text: 'Mental illness'),
    MedicalDetailList(text: 'Epilepsy'),
    MedicalDetailList(text: 'Asthma'),
    MedicalDetailList(text: 'Diabetes'),
    MedicalDetailList(text: 'Hypertension'),
    MedicalDetailList(text: 'Tuberculosis'),
    MedicalDetailList(text: 'Heart Disease'),
    MedicalDetailList(text: 'Malaria'),
    MedicalDetailList(text: 'Operations'),
    MedicalDetailList(text: 'Physical Disabilities'),
  ];

  medicalListView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          int groupValue = controller.isSelectedRadio[index] ?? 0;

          int sno = index + 1;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 15),
                    child: Center(
                      child: Text(
                        sno.toString(),
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      medicalDetailList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                // Update the selected radio value for the current row
                                controller.isSelectedRadio[index] = value;
                              });
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                controller.isSelectedRadio[index] = value;
                              });
                            },
                          ),
                          Text(
                            "No",
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
                ],
              ),
              // Add more rows as needed
            ],
          );
        });
  }

  ///DietaryValue
  List<MedicalDetailDietaryList> medicalDetailDietaryList = [
    MedicalDetailDietaryList(text: "Pork"),
    MedicalDetailDietaryList(text: "Beef"),
  ];

  ///DietryList
  dietaryList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          int groupValue = controller.isDietarySelectedRadio[index] ?? 0;

          int sno = index + 1;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 15),
                    child: Center(
                      child: Text(
                        sno.toString(),
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      medicalDetailDietaryList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                // Update the selected radio value for the current row
                                controller.isDietarySelectedRadio[index] =
                                    value;
                              });
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                controller.isDietarySelectedRadio[index] =
                                    value;
                              });
                            },
                          ),
                          Text(
                            "No",
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
                ],
              ),
              // Add more rows as needed
            ],
          );
        });
  }

  ///FoodPreference
  List<MedicalDetailFoodPreferenceList> medicalDetailFoodPreferenceList = [
    MedicalDetailFoodPreferenceList(text: "Pork"),
    MedicalDetailFoodPreferenceList(text: "Beef"),
  ];

  ///FoodPreferenceList
  foodPreferenceList() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          int groupValue = controller.isFoodPreferenceSelectedRadio[index] ?? 0;

          int sno = index + 1;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.5),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 15),
                    child: Center(
                      child: Text(
                        sno.toString(),
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: Text(
                      medicalDetailFoodPreferenceList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                // Update the selected radio value for the current row
                                controller
                                        .isFoodPreferenceSelectedRadio[index] =
                                    value;
                              });
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (int? value) {
                              setState(() {
                                controller
                                        .isFoodPreferenceSelectedRadio[index] =
                                    value;
                              });
                            },
                          ),
                          Text(
                            "No",
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
                ],
              ),
              // Add more rows as needed
            ],
          );
        });
  }
}
