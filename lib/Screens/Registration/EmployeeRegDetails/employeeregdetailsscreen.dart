import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/myfont.dart';
import 'package:jpb/Const/size.dart';
import 'package:jpb/Helper/inputformator.dart';
import 'package:jpb/Screens/Login/loginscreen.dart';
import 'package:jpb/Widget/backbutton.dart';
import 'package:jpb/Widget/button.dart';
import 'package:jpb/Widget/successfullyscreen.dart';
import 'package:jpb/modelcalss/EmployerDataFormModel.dart';

import '../../../Const/approutes.dart';
import '../../../Const/assets.dart';
import '../../../Widget/expansiontile.dart';
import '../../../Widget/showdropdown.dart';
import '../../../Widget/textformfield.dart';
import 'employeeregdetalcontroller.dart';

class EmployeeRegScreen extends StatefulWidget {
  const EmployeeRegScreen({super.key});

  @override
  State<EmployeeRegScreen> createState() => _EmployeeRegScreenState();
}

class _EmployeeRegScreenState extends State<EmployeeRegScreen> {
  late EmployeeRegDetailController controller;

  late EmployerDataFormModel _employerDataFormModel = EmployerDataFormModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployeeRegDetailController());
    // _employerDataFormModel = Get.arguments as EmployerDataFormModel;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.empDetailKey,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Employer Data Form",
            style: TextStyle(fontFamily: MyFont.myFont),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              CusExpansionTile(
                onTap: (bool isPersonalDetailClick) {
                  setState(() {
                    controller.isPersonalDetailClick =
                        !controller.isPersonalDetailClick;
                  });
                  print(controller.isPersonalDetailClick);
                },
                text: '1. Personal Details',
                widget: (controller.isPersonalDetailClick = true)
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "Employer Name",
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
                              controller: controller.empNameController,
                              inputFormatters: [],
                              hintText: "Employer Name",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter the Valid Name";
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
                              controller: controller.empNationalityController,
                              inputFormatters: [],
                              hintText: "Nationality",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Select Your Nationality";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "NRIC / FIN",
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
                              controller: controller.empNRICController,
                              inputFormatters: [],
                              hintText: "NRIC / FIN",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Your NRIC / FIN";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 20),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "Passport - only for EP and Spass holder",
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
                              controller: controller.empPassportController,
                              inputFormatters: [],
                              hintText: "Your Passport",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Your Passport";
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
                              controller: controller.empDobController,
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
                          ],
                        ),
                      )
                    : Container(),
              ),
              CusExpansionTile(
                onTap: (bool isContactDetailClick) {
                  setState(() {
                    controller.isContactDetailClick =
                        !controller.isContactDetailClick;
                  });
                },
                text: '2. Contact Details',
                widget: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          text: " ",
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
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Enter Your Contact Person";
                        //   } else {
                        //     return null;
                        //   }
                        // },
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
                        controller: controller.empHomeNoController,
                        inputFormatters: [],
                        hintText: "Home No",
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Enter the Home No";
                        //   } else {
                        //     return null;
                        //   }
                        // },
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
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              CusExpansionTile(
                onTap: (bool isJobScopesClick) {
                  setState(() {
                    controller.isJobScopesClick = !controller.isJobScopesClick;
                  });
                },
                text: '3. Job Scopes',
                widget: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
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
                        controller: controller.empHousingTypeController,
                        inputFormatters: [],
                        hintText: "Landed Property",
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Enter the Housing Type";
                        //   } else {
                        //     return null;
                        //   }
                        // },
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
                        controller: controller.empExpectedJobScopeController,
                        inputFormatters: [],
                        hintText: "Nothing selected",
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Select any option";
                        //   } else {
                        //     return null;
                        //   }
                        // },
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
                        controller: controller.empNoOfBedRoomController,
                        inputFormatters: [NumericInputFormatter()],
                        keyboardType: TextInputType.number,
                        hintText: "Number of Bedroom in the house",
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Enter Number of Bedroom in house";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              CusExpansionTile(
                onTap: (bool isAccountDetails) {
                  setState(() {
                    controller.isAccountDetails = !controller.isAccountDetails;
                  });
                },
                text: '4. Account Details',
                widget: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        hintText: "xxxxxxxxxxxx@gmail.com",
                        readOnly: true,

                        ///ValidatorForEmail
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return "Enter the Valid Mail";
                        //   } else if (validateEmail(value)) {
                        //     return "Invalid Email";
                        //   } else {
                        //     return null;
                        //   }
                        // },
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
                        controller: controller.empPasswordController,
                        inputFormatters: [],
                        // hintText: "",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Password";
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
                        controller: controller.empConfirmPasswordController,
                        inputFormatters: [],
                        // hintText: "",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Confirm Password";
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
                        controller: controller.empSmsContactController,
                        inputFormatters: [NumericInputFormatter()],
                        keyboardType: TextInputType.number,
                        hintText: "",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Your Contact Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "How would you like to proceed?",
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
                            "Self Processing",
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
                            "Using Salespersons/Agency Services",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.normal,
                              color: MyColors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: controller.isChecked,
                              onChanged: (value) {
                                setState(() {
                                  controller.isChecked = value!;
                                });
                              }),
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
                ),
              ),
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
                        if (controller.empDetailKey.currentState!.validate()) {
                          controller.employerDataFormModel.personalDetails ??=
                              PersonalDetails();
                          controller
                              .employerDataFormModel.personalDetails?.orgId = 1;
                          controller.employerDataFormModel.personalDetails
                                  ?.employerName =
                              controller.empNameController.value.text;
                          controller.employerDataFormModel.personalDetails
                              ?.employerCode = "JPBFB2CA07B";
                          controller.employerDataFormModel.personalDetails
                                  ?.nationality =
                              controller.empNationalityController.value.text;
                          controller.employerDataFormModel.personalDetails
                                  ?.nricfin =
                              controller.empNRICController.value.text;
                          controller.employerDataFormModel.personalDetails
                                  ?.passportNo =
                              controller.empPassportController.value.text;
                          controller.employerDataFormModel.personalDetails
                                  ?.dateOfBirth =
                              controller.empDobController.value.text;
                          controller.employerDataFormModel.contactDetails
                                  ?.contactPerson =
                              controller.empContactPersonController.value.text;
                          controller.employerDataFormModel.contactDetails
                                  ?.mobileNo =
                              controller.empMobileNoController.value.text;
                          controller.employerDataFormModel.contactDetails
                                  ?.homeNo =
                              controller.empHomeNoController.value.text;
                          controller.employerDataFormModel.contactDetails
                                  ?.emailId =
                              controller.empEmailController.value.text;
                          controller.employerDataFormModel.jobScopes
                                  ?.housingType =
                              controller.empHousingTypeController.value.text;
                          controller.employerDataFormModel.jobScopes
                              ?.expectedJobScope = [];
                          controller.employerDataFormModel.jobScopes
                                  ?.noOfBedroom =
                              controller.empNoOfBedRoomController.value.text;
                          controller
                                  .employerDataFormModel.accountDetails?.email =
                              controller.empEmailController.value.text;
                          controller.employerDataFormModel.accountDetails
                                  ?.password =
                              controller.empPasswordController.value.text;
                          controller.employerDataFormModel.accountDetails
                                  ?.confirmPassword =
                              controller
                                  .empConfirmPasswordController.value.text;
                          controller.employerDataFormModel.accountDetails
                                  ?.sMSContactNumber =
                              _employerDataFormModel
                                  .accountDetails?.sMSContactNumber
                                  .toString();
                          controller.employerDataFormModel.accountDetails
                              ?.email = controller.empEmailController.text;
                          print("<<<<<<<<<<<<<>>>>>>>>>>>>>>>>");
                          print(controller.employerDataFormModel.personalDetails
                              ?.employerName);
                          controller.empPostRegistration();
                        }
                      },
                      title: 'Verify',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
