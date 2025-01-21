import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colour.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    color: AppColors.primary,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle description = TextStyle(
    color: AppColors.primary,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle price = TextStyle(
    color: AppColors.primary,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle review = TextStyle(
    color: AppColors.primary,
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle currency = TextStyle(
    color: AppColors.primary,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
}
