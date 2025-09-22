import 'package:flutter/material.dart';

import 'widgets/shopping_view_body.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ShoppingViewBody()));
  }
}
