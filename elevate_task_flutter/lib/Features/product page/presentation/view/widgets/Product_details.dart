
import 'package:elevate_task_flutter/core/constants/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String description;

  const ProductDetails({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.title,
          maxLines: 1,
        ),
        SizedBox(height: 2.h),
        Text(
          description,
          style: AppTextStyles.description,
          maxLines: 1,
        ),
      ],
    );
  }
}
