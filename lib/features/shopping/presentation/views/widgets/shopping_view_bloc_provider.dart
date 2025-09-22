import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/di.dart';
import '../../../data/repos/shopping_repo_impl.dart';
import '../../manager/cubits/fetching_products_cubit.dart';

class ShoppingViewBlocProvider extends StatelessWidget {
  const ShoppingViewBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchingProductsCubit>(
      create: (context) =>
          FetchingProductsCubit(getIt.get<ShoppingRepoImpl>())..fetchProducts(),
      child: child,
    );
  }
}
