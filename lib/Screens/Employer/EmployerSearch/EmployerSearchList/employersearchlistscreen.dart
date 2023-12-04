import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/size.dart';
import 'package:jpb/Helper/inputformator.dart';
import 'package:jpb/Widget/button.dart';
import 'package:jpb/Widget/textformfield.dart';

import '../../../../Const/approutes.dart';
import '../../../../Const/assets.dart';
import '../../../../Const/myfont.dart';
import '../../../../Widget/constructors.dart';
import 'employersearchlistcontroller.dart';

class EmployerSearchListScreen extends StatefulWidget {
  const EmployerSearchListScreen({super.key});

  @override
  State<EmployerSearchListScreen> createState() =>
      _EmployerSearchListScreenState();
}

class _EmployerSearchListScreenState extends State<EmployerSearchListScreen> {
  late EmployerSearchListController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerSearchListController());
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
              "Filter By",
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
            Text(
              "Age Range",
              style: TextStyle(
                fontFamily: MyFont.headFont,
                color: MyColors.primaryCustom,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From",
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontSize: 20,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: width(context) / 2.5,
                      child: CustomTextFormField(
                        controller: controller.fromController,
                        inputFormatters: [NumericInputFormatter()],
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To",
                      style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontSize: 20,
                        color: MyColors.primaryCustom,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: width(context) / 2.5,
                      child: CustomTextFormField(
                        controller: controller.toController,
                        inputFormatters: [NumericInputFormatter()],
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isReligionClick.value =
                      !controller.isReligionClick.value;
                });
              },
              leading: Text(
                "Religion",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isReligionClick.value)
                ? religionListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isNationalityClick.value =
                      !controller.isNationalityClick.value;
                });
              },
              leading: Text(
                "Nationality",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isNationalityClick.value)
                ? nationalityListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isMaritalStatusClick.value =
                      !controller.isMaritalStatusClick.value;
                });
              },
              leading: Text(
                "Marital Status",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isMaritalStatusClick.value)
                ? maritalListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isExperienceClick.value =
                      !controller.isExperienceClick.value;
                });
              },
              leading: Text(
                "Experiences",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isExperienceClick.value)
                ? experienceListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isChildCareClick.value =
                      !controller.isChildCareClick.value;
                });
              },
              leading: Text(
                "Child Care",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isChildCareClick.value)
                ? childCareListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isElderlyCareClick.value =
                      !controller.isElderlyCareClick.value;
                });
              },
              leading: Text(
                "Elderly Care",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isElderlyCareClick.value)
                ? elderCareListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isCookingSkillsClick.value =
                      !controller.isCookingSkillsClick.value;
                });
              },
              leading: Text(
                "Cooking Skills",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isCookingSkillsClick.value)
                ? cookingListView()
                : const SizedBox(),
            ListTile(
              onTap: () {
                setState(() {
                  controller.isLanguageClick.value =
                      !controller.isLanguageClick.value;
                });
              },
              leading: Text(
                "Languages",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 25,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            (controller.isLanguageClick.value)
                ? languageListView()
                : const SizedBox(),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.centerRight,
              child: SubmitButton(
                  isLoading: false,
                  onTap: () {
                    Get.toNamed(Routes.employerSearchResultScreen);
                  },
                  title: "Search"),
            )
          ],
        ),
      ),
    );
  }

  ///ReligionListView

  List<String> employeeSearchReligion = [
    'Buddhist',
    'Christian',
    'Roman Catholic',
    'Muslim',
    'Hindu',
    'Other',
  ];

  religionListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeSearchReligion.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeSearchReligion[index],
                groupValue: controller.religionRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.religionRadio = value;
                  });
                },
              ),
              Text(
                employeeSearchReligion[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///Nationality

  List<String> employeeSearchNationality = [
    'Indonesia',
    'Philippines',
    'Myanmar',
    'Sri Lanka',
    'Thailand',
    'Indian',
    'Other',
  ];

  nationalityListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeSearchNationality.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeSearchNationality[index],
                groupValue: controller.nationalityRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.nationalityRadio = value;
                  });
                },
              ),
              Text(
                employeeSearchNationality[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///MaritalStatus

  List<String> employeeSearchMaritalStatus = [
    'Single',
    'Married',
    'Divorced',
    'Widowed',
    'Other',
  ];

  maritalListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeSearchMaritalStatus.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeSearchMaritalStatus[index],
                groupValue: controller.maritalRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.maritalRadio = value;
                  });
                },
              ),
              Text(
                employeeSearchMaritalStatus[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///Experience

  List<String> employeeExperience = [
    'Singapore',
    'Malaysia',
    'Hong Kong',
    'Saudi',
    'Indonesia',
    'Philippines',
    'Myanmar',
    'others',
  ];

  experienceListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeExperience.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeExperience[index],
                groupValue: controller.experienceRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.experienceRadio = value;
                  });
                },
              ),
              Text(
                employeeExperience[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///ChildCare

  List<String> employeeChildCare = [
    'New-born Baby Care (0-2 months)',
    'Infant Care (2-17 months)',
    'Toddlers Care (18-30 months)',
    'Child Care (3-10 years)',
    'others',
  ];

  childCareListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeChildCare.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeChildCare[index],
                groupValue: controller.childCareRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.childCareRadio = value;
                  });
                },
              ),
              Text(
                employeeChildCare[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///ElderCare

  List<String> employeeElderCare = [
    'Dementia Care',
    'Mental Health Condition Care',
    'Stroke Care',
    'Postoperative Care',
    'Indonesia',
    'Physical Disability Care',
    'Bedridden Care',
    'others',
  ];

  elderCareListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeElderCare.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeElderCare[index],
                groupValue: controller.elderCareRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.elderCareRadio = value;
                  });
                },
              ),
              Text(
                employeeElderCare[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///Cooking

  List<String> employeeCooking = [
    'Chinese Cuisine',
    'Indian Cuisine',
    'Western Cuisine',
    'Malay Cuisine',
    'others',
  ];

  cookingListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeCooking.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeCooking[index],
                groupValue: controller.cookingRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.cookingRadio = value;
                  });
                },
              ),
              Text(
                employeeCooking[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }

  ///Language

  List<String> employeeLanguage = [
    'English',
    'Mandarin',
    'Tamil',
    'Hokkien',
    'others',
  ];

  languageListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: employeeLanguage.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Radio<String>(
                value: employeeLanguage[index],
                groupValue: controller.languageRadio,
                onChanged: (String? value) {
                  setState(() {
                    controller.languageRadio = value;
                  });
                },
              ),
              Text(
                employeeLanguage[index],
                style: TextStyle(
                  fontFamily: MyFont.myFont,
                ),
              ),
            ],
          );
        });
  }
}
