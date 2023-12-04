import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/employerselectwidget.dart';
import 'employeeinterviewdetailcontroller.dart';

class EmployerInterviewDetailScreen extends StatefulWidget {
  const EmployerInterviewDetailScreen({super.key});

  @override
  State<EmployerInterviewDetailScreen> createState() =>
      _EmployerInterviewDetailScreenState();
}

class _EmployerInterviewDetailScreenState
    extends State<EmployerInterviewDetailScreen> {
  late EmployerInterviewDetailController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(EmployerInterviewDetailController());
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
                "Interview Appointment ",
                style: TextStyle(fontFamily: MyFont.myFont),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              const EmployerSelectWidget(),
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
                    "Interview Appointment Details",
                    style: TextStyle(
                      fontFamily: MyFont.headFont,
                      color: MyColors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: width(context),
                height: 55,
                decoration: BoxDecoration(
                  color: MyColors.textForm,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (controller.isCurrentInterview.value = true) {
                            controller.isPassInterview.value = false;
                          }
                        });
                      },
                      child: Container(
                        width: width(context) / 2.21,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0)),
                          // border: Border.all(),
                          color: controller.isCurrentInterview.value
                              ? MyColors.primaryCustom
                              : MyColors.textForm,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (controller.isCurrentInterview.value)
                                  ? const Icon(
                                      Icons.circle,
                                      color: MyColors.textForm,
                                      size: 10,
                                    )
                                  : const SizedBox(),
                              const SizedBox(width: 10),
                              Text(
                                "Current Interview",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: MyFont.myFont,
                                  fontWeight: FontWeight.bold,
                                  color: controller.isCurrentInterview.value
                                      ? MyColors.textForm
                                      : MyColors.primaryCustom,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (controller.isPassInterview.value = true) {
                            controller.isCurrentInterview.value = false;
                          }
                        });
                      },
                      child: Container(
                        width: width(context) / 2.21,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0)),
                          // border: Border.all(),
                          color: controller.isPassInterview.value
                              ? MyColors.primaryCustom
                              : MyColors.textForm,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (controller.isPassInterview.value)
                                  ? const Icon(
                                      Icons.circle,
                                      color: MyColors.textForm,
                                      size: 10,
                                    )
                                  : SizedBox(),
                              const SizedBox(width: 10),
                              Text(
                                "Past Interview",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: MyFont.myFont,
                                  fontWeight: FontWeight.bold,
                                  color: controller.isPassInterview.value
                                      ? MyColors.textForm
                                      : MyColors.primaryCustom,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              (controller.isCurrentInterview.value)
                  ? employerCurrentInterviewList()
                  : employerPastInterviewList(),
            ],
          ),
        ));
  }

  ///CurrerntInterview
  employerCurrentInterviewList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: MyColors.textForm,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting ID",
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "LKDJKDAWEDFRGYH",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          Text(
                            "Helper Name",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Helper Name",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: MyFont.myFont,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.primaryCustom,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting Link",
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "LKDJKDASDFGHJKLKJHGF",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Completed",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: MyFont.myFont,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.green,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date / Time",
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        " 12 : 5:30 PM TO 6 PM, CITY SQUARE MALL",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  ///PastInterview
  employerPastInterviewList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            color: MyColors.textForm,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting ID",
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "LKDJKDAWEDFRGYH",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          Text(
                            "Helper Name",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Helper Name",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: MyFont.myFont,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.primaryCustom,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting Link",
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "LKDJKDASDFGHJKLKJHGF",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 45,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Completed",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontFamily: MyFont.myFont,
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.green,
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date / Time",
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        " 12 : 5:30 PM TO 6 PM, CITY SQUARE MALL",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
