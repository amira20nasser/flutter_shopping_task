import 'package:flutter/material.dart';
import 'package:flutter_amira/core/constants/app_styles.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../data/models/product_model.dart';
import 'added_removed_icon_change_notifier.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: AppStyles.textStyle18(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            product.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.textStyle16(
              context,
            ).copyWith(fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "EGP ${(product.price * 9 / 10).toInt()}",
                style: AppStyles.textStyle18(context),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "EGP ${product.price}",
                  style: AppStyles.textStyle16(context).copyWith(
                    color: AppColors.textLight,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.reviews,
                    style: AppStyles.textStyle18(
                      context,
                    ).copyWith(fontWeight: FontWeight.normal),
                  ),
                  Text(
                    " (${product.rating.rate}) ",
                    style: AppStyles.textStyle18(
                      context,
                    ).copyWith(fontWeight: FontWeight.normal),
                  ),
                  const Icon(Icons.star, color: Colors.amber),
                ],
              ),
              AddedRemovedIconChangeNotifier(),
            ],
          ),
        ],
      ),
    );
  }
}
