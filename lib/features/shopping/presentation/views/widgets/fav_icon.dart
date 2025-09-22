import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../manager/fav_product_change_notifier.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Selector<FavProductChangeNotifier, bool>(
        selector: (_, state) => state.isFavorite,
        builder: (_, isFavorite, __) => IconButton(
          color: AppColors.primary,
          style: IconButton.styleFrom(backgroundColor: AppColors.secondary),
          isSelected: isFavorite,
          selectedIcon: const Icon(Icons.favorite_rounded),
          icon: const Icon(Icons.favorite_border),
          onPressed: () {
            context.read<FavProductChangeNotifier>().toggleFavorite();
          },
        ),
      ),
    );
  }
}
