import 'package:flutter/material.dart';
import 'package:flutter_amira/core/constants/app_sizes.dart';

import '../../../../../core/constants/app_colors.dart';
import 'favorite_icon_change_notifier.dart';

class ImageIconSection extends StatelessWidget {
  const ImageIconSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSizes.borderRadius),
              topRight: Radius.circular(AppSizes.borderRadius),
            ),
          ),
          child: Image.network(
            image,
            fit: BoxFit.fitHeight,
            height: 100,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 4.0, top: 4.0),
          child: FavoriteIconChangeNotifier(),
        ),
      ],
    );
  }
}
