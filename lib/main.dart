import 'package:flutter/material.dart';

import 'core/constants/app_theme.dart';
import 'core/utils/di.dart';
import 'features/shopping/presentation/views/shopping_view.dart';

void main() {
  setupServiceLocator();
  runApp(const AmiraShoppingApp());
}

class AmiraShoppingApp extends StatelessWidget {
  const AmiraShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const ShoppingView(),
    );
  }
}
