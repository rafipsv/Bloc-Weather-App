import 'package:bloc_weather_app/core/constants/app_colors.dart';
import 'package:bloc_weather_app/shared/shadows/box_shadows.dart';
import 'package:bloc_weather_app/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePotential extends StatelessWidget {
  const HomePotential({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.only(top: 28.h, left: 27.w, right: 27.w, bottom: 9.h),
      decoration: BoxDecoration(
        color: TextColors.textColor3,
        borderRadius: BorderRadius.circular(17.r),
        boxShadow: BoxShadows.weatherBoxShadow,
      ),
      child: Column(children: [_titleText()]),
    );
  }

  Widget _titleText() {
    return CustomText.primaryText(
      title: "Potential Weather",
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: TextColors.textColor1,
    );
  }
}
