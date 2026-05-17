import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxShadows {
  static List<BoxShadow> weatherBoxShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.3),
      spreadRadius: 0,
      blurRadius: 30.r,
      offset: Offset(0, 4),
    ),
  ];
}
