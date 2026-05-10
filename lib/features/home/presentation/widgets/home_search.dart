import 'package:bloc_weather_app/core/constants/app_colors.dart';
import 'package:bloc_weather_app/core/constants/app_icons.dart';
import 'package:bloc_weather_app/shared/extensions/extractors/extract_context_size.dart';
import 'package:bloc_weather_app/shared/widgets/custom_field.dart';
import 'package:bloc_weather_app/shared/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      padding: EdgeInsets.only(left: 16.w, right: 6.w),
      width: context.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: BoxColors.homeSearchBoxColor,
      ),

      child: Row(children: [_customField(), _volumeBox()]),
    );
  }

  Widget _customField() {
    return Expanded(
      child: CustomField(
        controller: TextEditingController(),
        hintText: "Search location...",
        prefixWidget: Padding(
          padding: EdgeInsets.only(right: 11.w),
          child: SvgPicture.asset(
            AppIcons.searchIcon,
            height: 15.h,
            width: 15.w,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _volumeBox() {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: CustomIconButton(
        height: 45.h,
        width: 44.w,
        iconPath: AppIcons.volumeIcon,
        onPressed: () {},
        borderWidth: 0,
        backgroundColor: TextColors.textColor3,
        borderRadius: 12.r,
        iconHeight: 18.h,
        iconWidth: 11.w,
      ),
    );
  }
}
