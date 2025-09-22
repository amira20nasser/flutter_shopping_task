part of 'fetching_products_cubit.dart';

sealed class FetchingProductsState {
  const FetchingProductsState();
}

class FetchingProductsInitial extends FetchingProductsState {}

class FetchingProductsLoading extends FetchingProductsState {}

class FetchingProductsFailure extends FetchingProductsState {
  final String errMessage;

  const FetchingProductsFailure(this.errMessage);
}

class FetchingProductsSuccess extends FetchingProductsState {
  final List<ProductModel> products;

  const FetchingProductsSuccess(this.products);
}
