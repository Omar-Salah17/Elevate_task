import 'package:elevate_task_flutter/Features/product%20page/data/model/product_model.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view/widgets/Product_details.dart';
import 'package:elevate_task_flutter/Features/product%20page/presentation/view/widgets/product_price.dart';
import 'package:elevate_task_flutter/core/constants/app_colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.primary,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ProductImage(imageUrl: product.image!),
              SizedBox(height: 5.h),
              ProductDetails(
                title: product.title!,
                description: product.description!,
              ),
              // SizedBox(height: 2.h),
              ProductPrice(
                price: product.price!,
                rating: product.rating!.rate!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  final String imageUrl;

  const _ProductImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.network(
            imageUrl,
            height: 100.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 0,
          top: 5.h,
          child: Image.asset("images/Group 17.png"),
        ),
      ],
    );
  }
}
