import 'package:bloc_weather_app/core/constants/app_icons.dart';
import 'package:bloc_weather_app/shared/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(onPressed: () {}, iconPath: AppIcons.filterIcon),
          CustomIconButton(
            onPressed: () {},
            iconPath: AppIcons.notificationIcon,
          ),
        ],
      ),
    );
  }
}
