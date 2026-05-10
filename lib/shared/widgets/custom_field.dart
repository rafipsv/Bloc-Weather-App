import 'package:bloc_weather_app/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? hintTextColor;
  final FontWeight? hintFontWeight;
  final double? hintFontSize;

  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefixWidget,
    this.suffixWidget,
    this.validator,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.hintTextColor,
    this.hintFontWeight,
    this.hintFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: CustomText.fieldText(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        prefixIconConstraints: BoxConstraints(maxHeight: 20.h, minHeight: 20.h),
        suffixIconConstraints: BoxConstraints(maxHeight: 20.h, minHeight: 20.h),
        hintStyle: CustomText.fieldHintText(
          color: hintTextColor,
          fontWeight: hintFontWeight,
          fontSize: hintFontSize,
        ),
      ),
      validator: validator,
    );
  }
}
