import 'package:flutter/material.dart';

import '../Const/mycolors.dart';
import '../Const/myfont.dart';
import '../Const/size.dart';

class HelperSelectWidget extends StatefulWidget {
  const HelperSelectWidget({super.key});

  @override
  State<HelperSelectWidget> createState() => _HelperSelectWidgetState();
}

class _HelperSelectWidgetState extends State<HelperSelectWidget> {
  bool isSelectClick = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: width(context),
          decoration: BoxDecoration(
              color: MyColors.textForm,
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: const BoxDecoration(
                  color: MyColors.textForm,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Helper Name",
                    style: TextStyle(
                      fontFamily: MyFont.headFont,
                      fontSize: 20,
                      color: MyColors.primaryCustom,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isSelectClick = !isSelectClick;
                  });
                },
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    color: MyColors.primaryCustom,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SELECT",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            fontSize: 20,
                            color: MyColors.white,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: MyColors.white,
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
        (isSelectClick)
            ? Container(
                width: width(context),
                decoration: BoxDecoration(
                  color: MyColors.textForm,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Account Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Bio Profile Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Contact Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Family Background",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Booking Related Information",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Interview Appointment Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Education Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Experience Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Language Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Medical Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          print("object");
                        },
                        leading: Text(
                          "Skill Details",
                          style: TextStyle(
                            fontFamily: MyFont.headFont,
                            color: MyColors.primaryCustom,
                            fontSize: 20,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_outlined,
                          color: MyColors.primaryCustom,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(height: 20),
      ],
    );
  }
}
