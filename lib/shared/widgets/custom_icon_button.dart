import 'package:bloc_weather_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? borderColor;
  final double? borderWidth;
  final Color? backgroundColor;
  final Widget? child;
  final double? borderRadius;
  final double? iconHeight;
  final double? iconWidth;
  const CustomIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
    this.height,
    this.width,
    this.borderColor,
    this.borderWidth,
    this.backgroundColor,
    this.child,
    this.borderRadius,
    this.iconHeight,
    this.iconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 54.h,
      width: width ?? 53.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? BoxColors.borderColor1,
          width: borderWidth ?? 2.w,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 17.r),
        color: backgroundColor ?? Colors.transparent,
      ),
      child:
          child ??
          SvgPicture.asset(
            iconPath,
            height: iconHeight ?? 24.h,
            width: iconWidth ?? 24.w,
            fit: BoxFit.fill,
          ),
    );
  }
}
