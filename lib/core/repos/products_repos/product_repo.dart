import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import '../../entites/product_entity.dart';

abstract class ProductRepo {
  Future<Either<Failures, List<ProductEntity>>> getProduct();
  Future<Either<Failures,List<ProductEntity>>> getBestSellingProducts();
}