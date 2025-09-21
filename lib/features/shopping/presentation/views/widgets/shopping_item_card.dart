import 'package:flutter/material.dart';

import '../../../../../core/constants/app_sizes.dart';

class ShoppingItemCard extends StatelessWidget {
  const ShoppingItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSizes.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
      ),
    );
  }
}
