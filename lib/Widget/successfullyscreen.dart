import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/myfont.dart';

import '../Const/assets.dart';

class SuccessFullyScreen extends StatefulWidget {
  final String text;
  final Widget nextScreen;

  const SuccessFullyScreen(
      {super.key, required this.text, required this.nextScreen});

  @override
  State<SuccessFullyScreen> createState() => _SuccessFullyScreenState();
}

class _SuccessFullyScreenState extends State<SuccessFullyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offAll(widget.nextScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.successfully,
              scale: 2,
            ),
            Text(
              widget.text,
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
    );
  }
}
