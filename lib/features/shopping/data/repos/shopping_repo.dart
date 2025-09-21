import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/product_model.dart';

abstract class ShoppingRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProducts();
}
