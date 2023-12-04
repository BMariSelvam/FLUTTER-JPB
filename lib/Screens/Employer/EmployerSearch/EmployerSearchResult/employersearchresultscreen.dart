import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jpb/Const/mycolors.dart';

import '../../../../Const/approutes.dart';
import '../../../../Const/assets.dart';
import '../../../../Const/myfont.dart';

class EmployerSearchResultScreen extends StatefulWidget {
  const EmployerSearchResultScreen({super.key});

  @override
  State<EmployerSearchResultScreen> createState() =>
      _EmployerSearchResultScreenState();
}

class _EmployerSearchResultScreenState
    extends State<EmployerSearchResultScreen> {
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
              "Search Result",
              style: TextStyle(fontFamily: MyFont.myFont),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            searchListGrid(),
          ],
        ),
      ),
    );
  }

  searchListGrid() {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: MyColors.textForm,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        Assets.profile,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Name".toUpperCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: MyFont.myFont, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "ID",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: MyFont.myFont, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {
                        Get.toNamed(Routes.employerProfilerScreen);
                      },
                      child: Text(
                        "View Profile",
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }
}
