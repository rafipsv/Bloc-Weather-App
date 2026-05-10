import 'package:bloc_weather_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText {
  static Widget primaryText({
    required String title,
    Color? color,
    bool? isShowAll,
    FontWeight? fontWeight,
    double? fontSize,
    TextAlign? textAlign,
    int? maxLines,
  }) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: isShowAll == true ? null : TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.inter(
        color: color ?? TextColors.textColor1,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 15.sp,
      ),
    );
  }

  static TextStyle fieldHintText({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return GoogleFonts.inter(
      color: color ?? TextColors.textColor2,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontSize: fontSize ?? 12.sp,
    );
  }

  static TextStyle fieldText({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return GoogleFonts.inter(
      color: color ?? TextColors.textColor3,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize ?? 13.sp,
    );
  }
}
