import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Widget/button.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';

class EmployerProfilerScreen extends StatefulWidget {
  const EmployerProfilerScreen({super.key});

  @override
  State<EmployerProfilerScreen> createState() => _EmployerProfilerScreenState();
}

class _EmployerProfilerScreenState extends State<EmployerProfilerScreen> {
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
              "Employer Profile",
              style: TextStyle(fontFamily: MyFont.myFont),
            ),
          ],
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
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                color: MyColors.textForm,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width(context) / 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                    fontFamily: MyFont.myFont,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Text(
                                    "45",
                                    style: TextStyle(
                                      fontFamily: MyFont.myFont,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width(context) / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nationality",
                                  style: TextStyle(
                                    fontFamily: MyFont.myFont,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Text(
                                    "Indian",
                                    style: TextStyle(
                                      fontFamily: MyFont.myFont,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width(context) / 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                    fontFamily: MyFont.myFont,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Available",
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontFamily: MyFont.myFont,
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.green,
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SubmitButton(
                          isLoading: false,
                          onTap: () {},
                          title: "Proceed To Interview")
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Bio Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Family Background",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Physical Attribute",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Educational Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Experience Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Medical Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Skill Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Languages",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Text(
                "Booking Related Details",
                style: TextStyle(
                  fontFamily: MyFont.headFont,
                  color: MyColors.primaryCustom,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_down),
            ),
            const SizedBox(height: 20),
            SubmitButton(
                isLoading: false, onTap: () {}, title: "Proceed To Interview"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
