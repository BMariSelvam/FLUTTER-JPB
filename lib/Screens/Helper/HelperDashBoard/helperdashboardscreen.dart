import 'package:flutter/material.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/size.dart';

import '../../../Const/assets.dart';
import '../../../Const/myfont.dart';
import '../../../Widget/constructors.dart';
import '../../Helper/HelperAccountDetails/helperaccountdetailscreen.dart';
import '../HelperBioProfiledetails/bioprofiledetailscreen.dart';
import '../HelperBookingRelatedInfoScreen/helperbookingrelatedinfoscreen.dart';
import '../HelperContactDetails/helpercontactdetailsscreen.dart';
import '../HelperEducationDetails/helpereducationdetails.dart';
import '../HelperExperience/helperexperiencescreen.dart';
import '../HelperFamilyBackground/helperfamilybackgroundscreen.dart';
import '../HelperInterviewApplicationDetails/helperinterviewapplicationdetailscreen.dart';
import '../HelperLanguageDetails/helperlanguagedetailscreen.dart';
import '../HelperMedicalDetails/helpermedicaldetailsscreen.dart';
import '../HelperSkillDetails/helperskilldetailscreen.dart';

class HelperDashBoardScreen extends StatefulWidget {
  const HelperDashBoardScreen({super.key});

  @override
  State<HelperDashBoardScreen> createState() => _HelperDashBoardScreenState();
}

class _HelperDashBoardScreenState extends State<HelperDashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Text(
            "Helper DashBoard",
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
                            "Helper Name \n Helper Id",
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
                          onPressed: () {},
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
              dashBoardGridView(),
            ],
          ),
        ));
  }

  dashBoardGridView() {
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
          itemCount: 11,
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
                        dashBoardGrid[index].heading,
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
                                      dashBoardGridNav()[index]));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dashBoardGrid[index].buttonName,
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

  ///DashBoardGrid
  List<DashBoardGrid> dashBoardGrid = [
    DashBoardGrid(heading: 'Account Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Bio Profile Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Contact Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Family Background', buttonName: 'Click Here'),
    DashBoardGrid(
        heading: 'Booking Related Information', buttonName: 'Click Here'),
    DashBoardGrid(
        heading: 'Interview Application Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Education Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Experience Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Language Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Medical Details', buttonName: 'Click Here'),
    DashBoardGrid(heading: 'Skill Details', buttonName: 'Click Here'),
  ];

  List dashBoardGridNav() => [
        const HelperAccountDetailsScreen(),
        const BioProfileDetailScreen(),
        const HelperContactDetailsScreen(),
        const HelperFamilyBackgroundScreen(),
        const HelperBookingRelatedInfoScreen(),
        const HelperInterViewDetailsScreen(),
        const HelperEducationDetailsScreen(),
        const HelperExperienceScreen(),
        const HelperLanguageDetailScreen(),
        const HelperMedicalDetailsScreen(),
        const HelperSkillDetailsScreen(),
      ];
}
