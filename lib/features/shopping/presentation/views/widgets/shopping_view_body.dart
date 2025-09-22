import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubits/fetching_products_cubit.dart';
import 'products_grid_view.dart';

class ShoppingViewBody extends StatelessWidget {
  const ShoppingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchingProductsCubit, FetchingProductsState>(
      builder: (context, state) {
        if (state is FetchingProductsSuccess) {
          return ProductsGridView(products: state.products);
        } else if (state is FetchingProductsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is FetchingProductsFailure) {
          return Center(child: Text(state.errMessage));
        }
        return Center(child: Text("There is a problem"));
      },
    );
  }
}
