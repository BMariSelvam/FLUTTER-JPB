import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Const/approutes.dart';
import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/constructors.dart';
import '../EmployerAccountDetails/employeraccountdetailsscreen.dart';
import '../EmployerAddressDetails/employeraddressdetailscreen.dart';
import '../EmployerBookingDetail/employerbookingdetailscreen.dart';
import '../EmployerContactDetail/employercontaildetailscreen.dart';
import '../EmployerFamilyDetail/employerfamilydetailscreen.dart';
import '../EmployerInterviewDetails/employerinterviewdetailscreen.dart';
import '../EmployerPersonalDetail/employerpersonaldetailscreen.dart';

class EmployeeDashBoardScreen extends StatefulWidget {
  const EmployeeDashBoardScreen({super.key});

  @override
  State<EmployeeDashBoardScreen> createState() =>
      _EmployeeDashBoardScreenState();
}

class _EmployeeDashBoardScreenState extends State<EmployeeDashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Employer Dashboard",
          style: TextStyle(fontFamily: MyFont.myFont),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: MyColors.primaryCustom,
                  width: width(context),
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.0),
                                child: Image.asset(Assets.profile))),
                        const SizedBox(height: 15),
                        Text(
                          "Employer Name \n Employer Id",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            fontSize: 25,
                            color: MyColors.primaryCustom,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.employerSearchListScreen);
                        },
                        icon: const Icon(
                          Icons.search,
                          color: MyColors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          color: MyColors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            employerDashBoardGridView(),
          ],
        ),
      ),
    );
  }

  ///EmployerDashBoardGrid
  List<EmployerDashBoardGrid> employerDashBoardGrid = [
    EmployerDashBoardGrid(heading: 'Account Details', buttonName: 'Click Here'),
    EmployerDashBoardGrid(
        heading: 'Personal Profile Details', buttonName: 'Click Here'),
    EmployerDashBoardGrid(heading: 'Contact Details', buttonName: 'Click Here'),
    EmployerDashBoardGrid(heading: 'Address', buttonName: 'Click Here'),
    EmployerDashBoardGrid(
        heading: 'Family Details & Job Scope', buttonName: 'Click Here'),
    EmployerDashBoardGrid(
        heading: 'Interview Appointment Details', buttonName: 'Click Here'),
    EmployerDashBoardGrid(
        heading: 'Booking & Payment Details', buttonName: 'Click Here'),
  ];

  employerDashBoardGridView() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: employerDashBoardGrid.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 0,
              color: MyColors.textForm,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      child: Text(
                        employerDashBoardGrid[index].heading,
                        style: TextStyle(
                          fontFamily: MyFont.headFont,
                          fontSize: 20,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      employerDashBoardGridNav()[index]));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              employerDashBoardGrid[index].buttonName,
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                color: MyColors.mainTheme,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.arrow_forward_outlined,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  List employerDashBoardGridNav() => [
        const EmployerAccountDetailsScreen(),
        const EmployerPersonalDetailScreen(),
        const EmployerContactDetailScreen(),
        const EmployerAddressDetailsScreen(),
        const EmployerFamilyDetailScreen(),
        const EmployerInterviewDetailScreen(),
        const EmployerBookingDetailScreen(),
      ];
}
