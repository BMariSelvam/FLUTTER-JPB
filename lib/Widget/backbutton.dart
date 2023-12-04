import 'package:flutter/material.dart';

import '../Const/assets.dart';
import '../Const/mycolors.dart';
import '../Const/myfont.dart';
import '../Const/size.dart';

class CusBackButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final Function onTap;
  const CusBackButton(
      {Key? key,
      required this.isLoading,
      required this.onTap,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading
          ? null
          : () {
              onTap();
            },
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: Colors.transparent,
        minimumSize: Size(width(context) / 10, 61),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: MyColors.buttonBorder, width: 6),
          borderRadius: BorderRadius.circular(30.0), // <-- Radius
        ),
      ),
      child: isLoading
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Assets.backArrow,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: MyFont.myFont,
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: MyColors.textForm),
                  ),
                ],
              ),
            ),
    );
  }
}
