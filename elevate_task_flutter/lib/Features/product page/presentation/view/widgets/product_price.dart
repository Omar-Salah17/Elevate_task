
import 'package:elevate_task_flutter/core/constants/app_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPrice extends StatelessWidget {
  final double price;
  final double rating;

  const ProductPrice({
    Key? key,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "EGP",
              style: AppTextStyles.currency,
            ),
            SizedBox(width: 5.w),
            Text(
              "$price",
              style: AppTextStyles.price,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              "Review ($rating)",
              style: AppTextStyles.review,
            ),
            SizedBox(width: 5.w),
            const Icon(Icons.star, color: Colors.amber, size: 14),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Image.asset("images/🦆 icon _plus circle_.png"),
            ),
          ],
        ),
      ],
    );
  }
}
