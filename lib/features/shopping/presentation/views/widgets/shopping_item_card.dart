import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../data/models/product_model.dart';
import 'image_section.dart';
import 'product_info_section.dart';

class ShoppingItemCard extends StatelessWidget {
  const ShoppingItemCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSizes.cardElevation,
      color: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        side: BorderSide(width: 3, color: AppColors.secondary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIconSection(image: product.image),
          SizedBox(height: 10),
          InfoSection(product: product),
        ],
      ),
    );
  }
}
