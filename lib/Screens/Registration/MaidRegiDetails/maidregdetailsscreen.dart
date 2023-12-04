import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Helper/inputformator.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/backbutton.dart';
import '../../../Widget/button.dart';
import '../../../Widget/expansiontile.dart';
import '../../../Widget/successfullyscreen.dart';
import '../../../Widget/textformfield.dart';
import '../../../modelcalss/HelperDataFormModel.dart';
import '../../Login/loginscreen.dart';
import 'maidregdetailcontroller.dart';

class MaidRegScreen extends StatefulWidget {
  const MaidRegScreen({super.key});

  @override
  State<MaidRegScreen> createState() => _MaidRegScreenState();
}

class _MaidRegScreenState extends State<MaidRegScreen> {
  late MaidRegDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(MaidRegDetailController());
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.maidRegKey,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Helper Data Form",
              style: TextStyle(fontFamily: MyFont.myFont),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                CusExpansionTile(
                  onTap: (bool helperBioDetails) {
                    setState(() {
                      controller.helperBioDetails =
                          !controller.helperBioDetails;
                    });
                    print(controller.helperBioDetails);
                  },
                  text: '1. Helper Bio Details',
                  widget: (controller.helperBioDetails = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                controller:
                                    controller.maidNationalityController,
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
                                controller:
                                    controller.maidPassportIssuePlaceController,
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
                                controller:
                                    controller.maidPassportExpiryDateController,
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
                                controller:
                                    controller.maidPassportIssueDateController,
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
                                controller:
                                    controller.maidWorkPermitNoController,
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
                                controller:
                                    controller.maidWorkPermitExpiryController,
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
                                controller:
                                    controller.maidMartialStatusController,
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
                                controller:
                                    controller.maidSpecializationController,
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
                                controller: controller
                                    .maidRepatriationAirportController,
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
                                  text: "Training Center",
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
                                controller: controller.maidTrainingController,
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
                            ],
                          ),
                        )
                      : Container(),
                ),
                CusExpansionTile(
                  onTap: (bool helperContact) {
                    setState(() {
                      controller.helperContact = !controller.helperContact;
                    });
                    print(controller.helperContact);
                  },
                  text: '2. Helper Contact',
                  widget: (controller.helperContact = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                controller:
                                    controller.maidHomeAddressController,
                                inputFormatters: [],
                                hintText: "Home Address",
                                maxLine: 5,
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Home Address";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidHomeTelephoneController,
                                inputFormatters: [NumericInputFormatter()],
                                keyboardType: TextInputType.number,
                                hintText: "Home Telephone",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Home Telephone";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the WhatsApp";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Viber";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Facebook";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the WeChat";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidInformationController,
                                inputFormatters: [],
                                hintText: "Information",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Information";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      : Container(),
                ),
                CusExpansionTile(
                  onTap: (bool familyContact) {
                    setState(() {
                      controller.familyContact = !controller.familyContact;
                    });
                    print(controller.familyContact);
                  },
                  text: '3. Family Background',
                  widget: (controller.familyContact = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                controller:
                                    controller.maidFatherOccupationController,
                                inputFormatters: [],
                                hintText: "Father Occupation",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Father Occupation";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidMotherOccupationController,
                                inputFormatters: [],
                                hintText: "Mother Occupation",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Mother Occupation";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Father Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Mother Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidSiblingPositionController,
                                inputFormatters: [],
                                hintText: "Siblings Position",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Siblings Position";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidNoOfBrotherController,
                                inputFormatters: [NumericInputFormatter()],
                                keyboardType: TextInputType.number,
                                hintText: "No. of Brother",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the No. of Brother";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the No. of Sister";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Brother Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Sister Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidHusbandNameController,
                                inputFormatters: [],
                                hintText: "Husband Name",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Husband Name";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidHusbandOccupationController,
                                inputFormatters: [],
                                hintText: "Husband Occupation",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Husband Occupation";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Husband Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidNoOfChildrenController,
                                inputFormatters: [NumericInputFormatter()],
                                keyboardType: TextInputType.number,
                                hintText: "No. Of Children",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the No. Of Children";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Child Age";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      : Container(),
                ),
                CusExpansionTile(
                  onTap: (bool physicalAttribute) {
                    setState(() {
                      controller.physicalAttribute =
                          !controller.physicalAttribute;
                    });
                    print(controller.physicalAttribute);
                  },
                  text: '4. Physical Attribute',
                  widget: (controller.physicalAttribute = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Complexion";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Height - Cm";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Height - Feet";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Weight Kg";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidWeightPoundController,
                                inputFormatters: [NumericInputFormatter()],
                                keyboardType: TextInputType.number,
                                hintText: "Weight - Pound",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Weight - Pound";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      : Container(),
                ),
                CusExpansionTile(
                  onTap: (bool bookingInformation) {
                    setState(() {
                      controller.bookingInformation =
                          !controller.bookingInformation;
                    });
                    print(controller.bookingInformation);
                  },
                  text: '5. Booking Related Information',
                  widget: (controller.bookingInformation = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                controller:
                                    controller.maidBasicSalaryController,
                                inputFormatters: [],
                                keyboardType: TextInputType.number,
                                hintText: "Basic Salary",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Basic Salary";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidOffDayDailyRateController,
                                inputFormatters: [],
                                keyboardType: TextInputType.number,
                                hintText: "Off Day Daily Rate",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Off Day Daily Rate";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Helper Fee";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidPocketMoneyController,
                                inputFormatters: [],
                                hintText: "Pocket Money",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Pocket Money";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidSelectOffDaysController,
                                inputFormatters: [],
                                hintText: "Select Off Days",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Select Off Days";
                                //   } else {
                                //     return null;
                                //   }
                                // },
                              ),
                              const SizedBox(height: 20),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "No.",
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
                                hintText: "No.",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the No.";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidAvailabilityDateController,
                                inputFormatters: [],
                                hintText: "DD/MM/YYYY",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Available Date (SGT)";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidAvailabilityTimeController,
                                inputFormatters: [],
                                hintText: "Available Time (SGT)",
                                // validator: (value) {
                                //   if (value == null || value.isEmpty) {
                                //     return "Enter the Available Time (SGT)";
                                //   } else {
                                //     return null;
                                //   }
                                // },
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
                                controller:
                                    controller.maidOtherRemarksController,
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
                              const SizedBox(height: 20),
                            ],
                          ),
                        )
                      : Container(),
                ),
                CusExpansionTile(
                  onTap: (bool accountDetails) {
                    setState(() {
                      controller.accountDetails = !controller.accountDetails;
                    });
                    print(controller.accountDetails);
                  },
                  text: '6. Account Details',
                  widget: (controller.accountDetails = true)
                      ? Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Email Address",
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
                                controller: controller.maidEmailController,
                                inputFormatters: [],
                                hintText: "Email Address",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter the Email Address";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Password",
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
                                controller: controller.maidPasswordController,
                                inputFormatters: [],
                                hintText: "Password",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter the Password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Confirm Password",
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
                                controller:
                                    controller.maidConfirmPasswordController,
                                inputFormatters: [],
                                hintText: "Confirm Password",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter the Confirm Password";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "SMS Contact Number",
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
                                controller:
                                    controller.maidSmsContactNumberController,
                                inputFormatters: [NumericInputFormatter()],
                                keyboardType: TextInputType.number,
                                hintText: "SMS Contact Number",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter the SMS Contact Number";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 20),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: controller.isMaidChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        controller.isMaidChecked = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: width(context) / 2,
                                    child: Text(
                                      'I hereby declared that all the'
                                      'above information given are'
                                      'true and correct.',
                                      style: TextStyle(
                                        fontFamily: MyFont.myFont,
                                        fontWeight: FontWeight.normal,
                                        color: MyColors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ),
                SizedBox(height: height(context) / 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CusBackButton(
                        isLoading: false,
                        onTap: () {
                          Get.back();
                        },
                        title: 'Back',
                      ),
                      SubmitButton(
                        isLoading: false,
                        onTap: () {
                          FocusScope.of(context).unfocus();

                          if (controller.maidRegKey.currentState!.validate()) {
                            controller.helperDataFormModel.helperBioDetails ??=
                                HelperBioDetails();
                            controller.helperDataFormModel.helperBioDetails
                                ?.orgId = 1;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.helperName =
                                controller.maidNameController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.nricfin =
                                controller.maidFINNoController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.nationality =
                                controller.maidNationalityController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.passportNo =
                                controller.maidPassportNoController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.passIssueDate =
                                controller
                                    .maidPassportIssueDateController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.passportExpiryDate =
                                controller.maidPassportExpiryDateController
                                    .value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.passportIssuePlace =
                                controller.maidPassportIssuePlaceController
                                    .value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.workPermitNo =
                                controller
                                    .maidWorkPermitNoController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.workPermitExpiry =
                                controller
                                    .maidWorkPermitExpiryController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.religion =
                                controller.maidReligionController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.dateOfBirth =
                                controller.maidDOBController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.martilaStatus =
                                controller
                                    .maidMartialStatusController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.birthPlace =
                                controller.maidBirthPlaceController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.specializationPreference =
                                controller
                                    .maidSpecializationController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.repatraiteAirport =
                                controller.maidRepatriationAirportController
                                    .value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.trainingCenter =
                                controller.maidTrainingController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.emailId =
                                controller.maidEmailController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.password =
                                controller.maidPasswordController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                    ?.mobileNo =
                                controller
                                    .maidHomeTelephoneController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                ?.status = "Active";
                            controller.helperDataFormModel.helperBioDetails
                                    ?.otherInfo =
                                controller
                                    .maidOtherRemarksController.value.text;
                            controller.helperDataFormModel.helperBioDetails
                                ?.directHire = true;
                            controller.helperDataFormModel.helperBioDetails
                                ?.isActive = true;
                            controller.helperDataFormModel.helperBioDetails
                                ?.createdBy = "HL20261B911";
                            controller.helperDataFormModel.helperBioDetails
                                ?.helperCode = "HL20261B911";
                            controller.helperDataFormModel.helperBioDetails
                                ?.fileName = "";
                            controller.helperDataFormModel.helperBioDetails
                                ?.helperImgBase64String = "";
                            controller.helperDataFormModel.helperBioDetails
                                    ?.emailAddress =
                                controller.maidEmailController.value.text;
                            controller.helperPostRegistration();
                          }
                        },
                        title: 'Verify',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
