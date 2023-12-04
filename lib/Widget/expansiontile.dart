import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/myfont.dart';
import 'package:jpb/Screens/Registration/EmployeeRegDetails/employeeregdetalcontroller.dart';

class CusExpansionTile extends StatefulWidget {
  final String text;
  final Widget widget;
  final Function(bool isExpanded) onTap;
  // final Function onTap;
  const CusExpansionTile(
      {super.key,
      required this.text,
      required this.widget,
      required this.onTap});

  @override
  State<CusExpansionTile> createState() => _CusExpansionTileState();
}

class _CusExpansionTileState extends State<CusExpansionTile>
    with SingleTickerProviderStateMixin {
  bool isExpanded = true;
  int? _currIndex;
  late EmployeeRegDetailController empController;
  @override
  void initState() {
    super.initState();
    empController = Get.put(EmployeeRegDetailController());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
              _currIndex = _currIndex == 0 ? 1 : 0;
            });
            widget.onTap(isExpanded);
          },
          child: Ink(
            height: 55,
            decoration: BoxDecoration(
              color: MyColors.teal,
              borderRadius: isExpanded
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))
                  : BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                      fontFamily: MyFont.headFont,
                      color: MyColors.white,
                      fontSize: 20,
                    ),
                  ),
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 350),
                      transitionBuilder: (child, anim) => RotationTransition(
                            turns: child.key == const ValueKey('icon1')
                                ? Tween<double>(begin: 0.75, end: 0)
                                    .animate(anim)
                                : Tween<double>(begin: 0, end: 0).animate(anim),
                            child: ScaleTransition(scale: anim, child: child),
                          ),
                      child: _currIndex == 0
                          ? const Icon(Icons.keyboard_arrow_up,
                              color: MyColors.textForm,
                              size: 30,
                              key: ValueKey('icon1'))
                          : const Icon(
                              Icons.keyboard_arrow_down,
                              color: MyColors.textForm,
                              size: 30,
                              key: ValueKey('icon2'),
                            )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        isExpanded ? widget.widget : Container()
      ],
    );
  }
}
