import 'package:bloc_weather_app/features/home/presentation/widgets/home_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.h),
          HomeTop(),
        ],
      ),
    );
  }
}
