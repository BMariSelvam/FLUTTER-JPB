import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Const/assets.dart';
import '../../../Const/mycolors.dart';
import '../../../Const/myfont.dart';
import '../../../Const/size.dart';
import '../../../Widget/employerselectwidget.dart';

class EmployerBookingDetailScreen extends StatefulWidget {
  const EmployerBookingDetailScreen({super.key});

  @override
  State<EmployerBookingDetailScreen> createState() =>
      _EmployerBookingDetailScreenState();
}

class _EmployerBookingDetailScreenState
    extends State<EmployerBookingDetailScreen> {
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
                "Booking & Payment Details",
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
                    "Booking & Payment Details",
                    style: TextStyle(
                      fontFamily: MyFont.headFont,
                      color: MyColors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              bookingAndPaymentList(),
            ],
          ),
        ));
  }

  bookingAndPaymentList() {
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
                              "Transaction ID",
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
                            "Payment Status",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Paid",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Booking No",
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
                            "Processing Status",
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Helper Code",
                              style: TextStyle(
                                fontFamily: MyFont.myFont,
                                fontWeight: FontWeight.bold,
                                color: MyColors.primaryCustom,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "LKDJKDASDFGFRTGJ",
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
                            "Helper Employment \nStatus",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: MyFont.myFont,
                              fontWeight: FontWeight.bold,
                              color: MyColors.primaryCustom,
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Offline",
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Helper Name",
                        style: TextStyle(
                          fontFamily: MyFont.myFont,
                          fontWeight: FontWeight.bold,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "AAAAAAAAAAAAAA",
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
