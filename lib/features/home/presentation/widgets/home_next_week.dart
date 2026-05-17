import 'package:bloc_weather_app/core/constants/app_colors.dart';
import 'package:bloc_weather_app/core/constants/app_icons.dart';
import 'package:bloc_weather_app/shared/shadows/box_shadows.dart';
import 'package:bloc_weather_app/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNextWeek extends StatelessWidget {
  const HomeNextWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleText(),
          SizedBox(height: 20.h),
          _weathersList(),
        ],
      ),
    );
  }

  Widget _titleText() {
    return CustomText.primaryText(
      title: "Next Week",
      fontSize: 21.sp,
      fontWeight: FontWeight.w700,
      color: TextColors.textColor4,
    );
  }

  Widget _weathersList() {
    return SizedBox(
      height: 88.h,
      child: ListView.builder(
        itemCount: 10,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _widgetBox(isLast: index == 9);
        },
      ),
    );
  }

  Widget _widgetBox({bool isLast = false}) {
    return Container(
      height: 88.h,
      width: 62.w,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: isLast ? 0 : 29.w),
      padding: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: TextColors.textColor3,
        borderRadius: BorderRadius.circular(17.r),
        boxShadow: BoxShadows.weatherBoxShadow,
      ),
      child: Column(
        children: [
          _temperatureText(temperature: "25"),
          _iconWidget(iconPath: AppIcons.sunRainIcon),
          SizedBox(height: 10.h),
          _dateText(date: "01/12"),
        ],
      ),
    );
  }

  Widget _temperatureText({required String temperature}) {
    return CustomText.primaryText(title: "$temperature°C", fontSize: 12.sp);
  }

  Widget _iconWidget({required String iconPath}) {
    return Image.asset(iconPath, height: 35.h, width: 58.w, fit: BoxFit.cover);
  }

  Widget _dateText({required String date}) {
    return CustomText.primaryText(title: date, fontSize: 10.sp);
  }
}
