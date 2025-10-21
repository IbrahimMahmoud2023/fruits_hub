import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/core/models/product_model.dart';

abstract class ProductRepo {
  Future<Either<Failures,List<ProductModel>>> getProduct();
  Future<Either<Failures,List<ProductModel>>> getBestSellingProducts();
}