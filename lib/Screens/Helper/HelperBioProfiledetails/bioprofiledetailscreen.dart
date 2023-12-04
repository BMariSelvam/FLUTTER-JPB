import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/helperselectwidget.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Helper/inputformator.dart';
import '../../../Widget/button.dart';
import '../../../Widget/textformfield.dart';
import 'bioprofiledetailcontroller.dart';

class BioProfileDetailScreen extends StatefulWidget {
  const BioProfileDetailScreen({super.key});

  @override
  State<BioProfileDetailScreen> createState() => _BioProfileDetailScreenState();
}

class _BioProfileDetailScreenState extends State<BioProfileDetailScreen> {
  late BioProfileDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(BioProfileDetailController());
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
            "Bio Profile Details",
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
                    "Bio Profile Details",
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
                  text: "Name",
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
                controller: controller.maidNameController,
                inputFormatters: [],
                hintText: "Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Name";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "FIN No.",
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
                controller: controller.maidFINNoController,
                inputFormatters: [NumericInputFormatter()],
                keyboardType: TextInputType.number,
                hintText: "FIN No.",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Select Your FIN No";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Nationality",
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
                controller: controller.maidNationalityController,
                inputFormatters: [],
                hintText: "Nationality",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Nationality";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Passport No.",
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
                controller: controller.maidPassportNoController,
                inputFormatters: [],
                hintText: "Passport No.",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Passport No";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Passport Issue Place",
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
                controller: controller.maidPassportIssuePlaceController,
                inputFormatters: [],
                hintText: "Passport Issue Place",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Passport Issue Place";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Passport Expiry Date",
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
                controller: controller.maidPassportExpiryDateController,
                inputFormatters: [],
                hintText: "Passport Expiry Date",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Passport Expiry Date";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Passport Issue Date",
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
                controller: controller.maidPassportIssueDateController,
                inputFormatters: [],
                hintText: "Passport Issue Date",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Passport Issue Date";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Work Permit No.",
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
                controller: controller.maidWorkPermitNoController,
                inputFormatters: [],
                hintText: "Work Permit No.",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Work Permit No.";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Work Permit Expiry",
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
                controller: controller.maidWorkPermitExpiryController,
                inputFormatters: [],
                hintText: "Work Permit Expiry",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Work Permit Expiry";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Religion",
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
                controller: controller.maidReligionController,
                inputFormatters: [],
                hintText: "Religion",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Religion";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Date of Birth",
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
                controller: controller.maidDOBController,
                inputFormatters: [],
                hintText: "Date of Birth",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your DOB";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Martial Status",
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
                controller: controller.maidMartialStatusController,
                inputFormatters: [],
                hintText: "Martial Status",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Select Your Martial Status";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Birth Place",
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
                controller: controller.maidBirthPlaceController,
                inputFormatters: [],
                hintText: "Birth Place",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Birth Place";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Specialization/Preference",
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
                controller: controller.maidSpecializationController,
                inputFormatters: [],
                hintText: "Specialization/Preference",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Specialization/Preference";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Repatriation Airport",
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
                controller: controller.maidRepatriationAirportController,
                inputFormatters: [],
                hintText: "Repatriation",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Repatriation Airport";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Status",
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
                controller: controller.maidStatusController,
                inputFormatters: [],
                hintText: "Status",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Status";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Training Center",
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
                controller: controller.maidStatusController,
                inputFormatters: [],
                hintText: "Training Center",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Your Training Center";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Direct Hire",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: controller.isSelectedRadio,
                        onChanged: (int? value) {
                          setState(() {
                            controller.isSelectedRadio = value;
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
                        groupValue: controller.isSelectedRadio,
                        onChanged: (int? value) {
                          setState(() {
                            controller.isSelectedRadio = value;
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
              const SizedBox(height: 20),
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
                    "Physical Attributes",
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
                  text: "Complexion",
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
                controller: controller.maidComplexionController,
                inputFormatters: [],
                hintText: "Complexion",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Complexion";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Height - Cm",
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
                controller: controller.maidHeightCmController,
                inputFormatters: [NumericInputFormatter()],
                keyboardType: TextInputType.number,
                hintText: "Height - Cm",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Height - Cm";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Height - Feet",
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
                controller: controller.maidHeightFeetController,
                inputFormatters: [NumericInputFormatter()],
                keyboardType: TextInputType.number,
                hintText: "Height - Feet",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Height - Feet";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Weight - Kg",
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
                controller: controller.maidWeightKgController,
                inputFormatters: [],
                hintText: "Weight - KG",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Weight Kg";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Weight - Pound",
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
                controller: controller.maidWeightPoundController,
                inputFormatters: [NumericInputFormatter()],
                keyboardType: TextInputType.number,
                hintText: "Weight - Pound",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Weight - Pound";
                  } else {
                    return null;
                  }
                },
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
}
