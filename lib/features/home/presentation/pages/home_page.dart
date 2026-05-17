import 'package:bloc_weather_app/features/home/presentation/widgets/home_next_week.dart';
import 'package:bloc_weather_app/features/home/presentation/widgets/home_search.dart';
import 'package:bloc_weather_app/features/home/presentation/widgets/home_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20.h),
            HomeTop(),
            SizedBox(height: 20.h),
            HomeSearch(),
            SizedBox(height: 20.h),
            HomeNextWeek(),
          ],
        ),
      ),
    );
  }
}
