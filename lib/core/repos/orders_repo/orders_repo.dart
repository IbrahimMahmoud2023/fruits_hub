import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';

abstract class OrdersRepo {

  Future<Either<Failures ,void>> addOrder(OrderEntity orderEntity);
}