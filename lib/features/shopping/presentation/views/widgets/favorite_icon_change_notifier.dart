import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manager/fav_product_change_notifier.dart';
import 'fav_icon.dart';

class FavoriteIconChangeNotifier extends StatelessWidget {
  const FavoriteIconChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavProductChangeNotifier(),
      child: FavoriteIcon(),
    );
  }
}
