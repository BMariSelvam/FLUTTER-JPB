import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jpb/Const/mycolors.dart';
import 'package:jpb/Const/myfont.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final String? labelText;
  final TextStyle? labelTextStyle;
  final bool? readOnly;
  final TextStyle? textStyle;
  final List<TextInputFormatter> inputFormatters;
  final AutovalidateMode autoValidateMode;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final bool? enabled;
  final bool? filled;
  final Color? filledColor;
  final IconButton? suffixIcon;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final int? maxLength;
  final int? maxLine;
  final String? initialValue;
  final BorderSide? inputBorder;
  final Color? cursorColor;
  final void Function(String)? onChanged;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.labelTextStyle,
    this.readOnly,
    this.textStyle,
    required this.inputFormatters,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.obscureText,
    this.suffixIcon,
    this.enabled,
    this.onTap,
    this.keyboardType,
    this.maxLength,
    this.initialValue,
    this.hintTextStyle,
    this.filled,
    this.filledColor,
    this.inputBorder,
    this.cursorColor,
    this.onChanged,
    this.maxLine,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength ?? 500,
      maxLines: widget.maxLine ?? 1,
      controller: widget.controller,
      readOnly: widget.readOnly ?? false,
      inputFormatters: widget.inputFormatters,
      obscureText: widget.obscureText ?? false,
      style: TextStyle(fontFamily: MyFont.myFont),
      keyboardType: widget.keyboardType,
      enabled: widget.enabled,
      autovalidateMode: widget.autoValidateMode,
      validator: widget.validator,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      initialValue: widget.initialValue,
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
          filled: true,
          fillColor: widget.filledColor ?? MyColors.textForm,
          hintText: widget.hintText,
          hintStyle: TextStyle(fontFamily: MyFont.myFont),
          labelText: widget.labelText,
          labelStyle: widget.labelTextStyle,
          suffixIcon: widget.suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          counterText: "",
          contentPadding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: MyColors.grey),
            borderRadius: BorderRadius.circular(25.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(25.0),
          )),
    );
  }
}
