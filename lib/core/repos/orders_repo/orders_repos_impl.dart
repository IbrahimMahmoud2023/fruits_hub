import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_ecommerec/core/services/data_base_services.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';

import '../../../features/checkout/data/models/order_model.dart';
import '../../utils/backend_point.dart';

class OrderRepoImpl implements OrdersRepo {
  final DataBaseServices dataBaseServices;

  OrderRepoImpl({required this.dataBaseServices});
  @override
  Future<Either<Failures, void>> addOrder(OrderEntity orderEntity)async {

    try {
      await dataBaseServices.addData(path: BackEndEndPoint.kOrders, data: OrderModel.fromEntity(orderEntity).toJson());
      return const Right(null);
    } catch (e) {
        return Left(Failures( errorMessage: e.toString()));

    }

  }

}