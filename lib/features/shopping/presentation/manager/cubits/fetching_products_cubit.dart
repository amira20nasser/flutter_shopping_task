import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/product_model.dart';
import '../../../data/repos/shopping_repo.dart';

part 'fetching_products_state.dart';

class FetchingProductsCubit extends Cubit<FetchingProductsState> {
  FetchingProductsCubit(this.repo) : super(FetchingProductsInitial());

  final ShoppingRepo repo;

  Future<void> fetchProducts() async {
    emit(FetchingProductsLoading());
    var result = await repo.fetchProducts();
    result.fold(
      (failure) {
        emit(FetchingProductsFailure(failure.errMessage));
      },
      (products) {
        emit(FetchingProductsSuccess(products));
      },
    );
  }
}
