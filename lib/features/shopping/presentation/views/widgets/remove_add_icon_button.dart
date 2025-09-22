import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../manager/added_product_cart.dart';

class AddRemoveIconButton extends StatelessWidget {
  const AddRemoveIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Selector<AddedProductCartChangeNotifier, bool>(
        selector: (_, state) => state.addedCart,
        builder: (_, isInCart, __) => IconButton(
          color: AppColors.primary,
          selectedIcon: const Icon(
            Icons.remove_circle,
            color: AppColors.secondary,
          ),
          icon: const Icon(Icons.add_circle),
          isSelected: isInCart,
          onPressed: () {
            context.read<AddedProductCartChangeNotifier>().toggle();
          },
        ),
      ),
    );
  }
}
