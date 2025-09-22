import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manager/added_product_cart.dart';
import 'remove_add_icon_button.dart';

class AddedRemovedIconChangeNotifier extends StatelessWidget {
  const AddedRemovedIconChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddedProductCartChangeNotifier(),
      child: AddRemoveIconButton(),
    );
  }
}
