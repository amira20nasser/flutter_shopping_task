import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/dio_service.dart';
import '../models/product_model.dart';
import 'shopping_repo.dart';

class ShoppingRepoImpl extends ShoppingRepo {
  final DioService dioService;

  ShoppingRepoImpl(this.dioService);

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await dioService.get(endPoint: ApiConstants.productsEndpoint);
      log(data.toString());
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
