import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/helperselectwidget.dart';
import 'package:jpb/Widget/textformfield.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/button.dart';
import '../../../Widget/constructors.dart';
import '../../../Widget/constructors.dart';
import 'helperskilldetailcontroller.dart';

class HelperSkillDetailsScreen extends StatefulWidget {
  const HelperSkillDetailsScreen({super.key});

  @override
  State<HelperSkillDetailsScreen> createState() =>
      _HelperSkillDetailsScreenState();
}

class _HelperSkillDetailsScreenState extends State<HelperSkillDetailsScreen> {
  late HelperSkillDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(HelperSkillDetailController());
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
                "Skill Details",
                style: TextStyle(fontFamily: MyFont.myFont),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Column(
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
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Text(
                            'S.NO',
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
                            'Areas Of Work',
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
                            'Willingness',
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
                            'Experience',
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
              skillsDetailList(),
              const SizedBox(height: 40),
              Align(
                  alignment: Alignment.centerRight,
                  child: SubmitButton(
                      isLoading: false, onTap: () {}, title: "Save"))
            ],
          ),
        ));
  }

  skillsDetailList() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Card(
          color: MyColors.textForm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.7),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                              child: Text(
                            'Care of Infants/Children',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                      ],
                    ),

                    // Add more rows as needed
                  ],
                ),
                childrenListView(),
              ],
            ),
          ),
        ),
        Card(
          color: MyColors.textForm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.7),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                              child: Text(
                            'Care of Elderly',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                      ],
                    ),

                    // Add more rows as needed
                  ],
                ),
                elderListView(),
              ],
            ),
          ),
        ),
        Card(
          color: MyColors.textForm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.7),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                              child: Text(
                            'Care of Disabled',
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Center(
                              child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: MyFont.headFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.primaryCustom,
                            ),
                          )),
                        ),
                      ],
                    ),

                    // Add more rows as needed
                  ],
                ),
                disabledListView(),
              ],
            ),
          ),
        ),
        Card(
          color: MyColors.textForm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.7),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.normal,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'General Housework',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: controller.houseworkRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Update the selected radio value for the current row
                                        controller.houseworkRadio = value;
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
                                    groupValue: controller.houseworkRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        controller.houseworkRadio = value;
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue:
                                        controller.houseworkExperienceRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Update the selected radio value for the current row
                                        controller.houseworkExperienceRadio =
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
                                    groupValue:
                                        controller.houseworkExperienceRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        controller.houseworkExperienceRadio =
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
                        ),
                      ],
                    ),

                    // Add more rows as needed
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          color: MyColors.textForm,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Column(
              children: [
                Table(
                  columnWidths: const {
                    0: FlexColumnWidth(0.7),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1.5),
                    3: FlexColumnWidth(1.5),
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.normal,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            'Cooking',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: controller.cookingRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Update the selected radio value for the current row
                                        controller.cookingRadio = value;
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
                                    groupValue: controller.cookingRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        controller.cookingRadio = value;
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue:
                                        controller.cookingExperienceRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        // Update the selected radio value for the current row
                                        controller.cookingExperienceRadio =
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
                                    groupValue:
                                        controller.cookingExperienceRadio,
                                    onChanged: (int? value) {
                                      setState(() {
                                        controller.cookingExperienceRadio =
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
                        ),
                      ],
                    ),

                    // Add more rows as needed
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Please Specify\ncuisine",
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                  fontWeight: FontWeight.normal,
                  color: MyColors.primaryCustom,
                ),
              ),
              SizedBox(
                width: width(context) / 2,
                child: CustomTextFormField(
                  controller: controller.cuisineController,
                  inputFormatters: [],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  ///ChildrenListView
  List<SkillChildrenList> skillChildrenList = [
    SkillChildrenList(text: "New-born BabyCare (0-2months)"),
    SkillChildrenList(text: "Infant Care (2-17months)"),
    SkillChildrenList(text: "Toddlers Care(18-30 months)"),
    SkillChildrenList(text: "Child Care (3-10years)"),
  ];

  childrenListView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          ///RadioButtonValues
          int groupValue = controller.isChildrenCareSelectedRadio[index] ?? 0;
          int groupValue1 =
              controller.isChildrenCareExperienceSelectedRadio[index] ?? 0;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.7),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(1.5),
              3: FlexColumnWidth(1.5),
            },
            children: [
              TableRow(
                children: [
                  Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: MyFont.headFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 0, 7),
                    child: Text(
                      skillChildrenList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                          .isChildrenCareSelectedRadio[index] =
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
                                          .isChildrenCareSelectedRadio[index] =
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  // Update the selected radio value for the current row
                                  controller
                                          .isChildrenCareExperienceSelectedRadio[
                                      index] = value;
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
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  controller
                                          .isChildrenCareExperienceSelectedRadio[
                                      index] = value;
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
                  ),
                ],
              ),

              // Add more rows as needed
            ],
          );
        });
  }

  ///ElderListView
  List<SkillElderList> skillElderList = [
    SkillElderList(text: "Dementia Care"),
    SkillElderList(text: "Mental Health Condition Care"),
  ];

  elderListView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          ///RadioButtonValues
          int groupValue = controller.isElderSelectedRadio[index] ?? 0;
          int groupValue1 =
              controller.isElderSelectedRadioExperienceSelectedRadio[index] ??
                  0;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.7),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(1.5),
              3: FlexColumnWidth(1.5),
            },
            children: [
              TableRow(
                children: [
                  Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: MyFont.headFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 0, 7),
                    child: Text(
                      skillElderList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue,
                              onChanged: (int? value) {
                                setState(() {
                                  // Update the selected radio value for the current row
                                  controller.isElderSelectedRadio[index] =
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
                                  controller.isElderSelectedRadio[index] =
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  // Update the selected radio value for the current row
                                  controller
                                          .isElderSelectedRadioExperienceSelectedRadio[
                                      index] = value;
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
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  controller
                                          .isElderSelectedRadioExperienceSelectedRadio[
                                      index] = value;
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
                  ),
                ],
              ),

              // Add more rows as needed
            ],
          );
        });
  }

  ///DisabledListView
  List<SkillDisabledList> skillDisabledList = [
    SkillDisabledList(text: "Stroke Care"),
    SkillDisabledList(text: "Postoperative Care"),
    SkillDisabledList(text: "Physical Disability Care"),
    SkillDisabledList(text: "Bedridden Care"),
  ];

  disabledListView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          ///RadioButtonValues
          int groupValue = controller.isDisabledSelectedRadio[index] ?? 0;
          int groupValue1 = controller
                  .isDisabledSelectedRadioExperienceSelectedRadio[index] ??
              0;
          return Table(
            columnWidths: const {
              0: FlexColumnWidth(0.7),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(1.5),
              3: FlexColumnWidth(1.5),
            },
            children: [
              TableRow(
                children: [
                  Center(
                    child: Text(
                      '',
                      style: TextStyle(
                        fontFamily: MyFont.headFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 25, 0, 7),
                    child: Text(
                      skillDisabledList[index].text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue,
                              onChanged: (int? value) {
                                setState(() {
                                  // Update the selected radio value for the current row
                                  controller.isDisabledSelectedRadio[index] =
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
                                  controller.isDisabledSelectedRadio[index] =
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  // Update the selected radio value for the current row
                                  controller
                                          .isDisabledSelectedRadioExperienceSelectedRadio[
                                      index] = value;
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
                              groupValue: groupValue1,
                              onChanged: (int? value) {
                                setState(() {
                                  controller
                                          .isDisabledSelectedRadioExperienceSelectedRadio[
                                      index] = value;
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
                  ),
                ],
              ),

              // Add more rows as needed
            ],
          );
        });
  }
}
