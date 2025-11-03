import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerec/core/errors/failures.dart';
import 'package:fruits_ecommerec/core/repos/orders_repo/orders_repo.dart';
import 'package:fruits_ecommerec/core/services/data_base_services.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_input_entity.dart';

import '../../../features/checkout/data/models/order_model.dart';
import '../../utils/backend_point.dart';

class OrderRepoImpl implements OrdersRepo {
  final DataBaseServices dataBaseServices;

  OrderRepoImpl({required this.dataBaseServices});
  @override
  Future<Either<Failures, void>> addOrder(OrderInputEntity orderEntity)async {

    try {
      var orderModel = OrderModel.fromEntity(orderEntity);
      await dataBaseServices.addData(
          path: BackEndEndPoint.kOrders,
          documentId: orderModel.orderId,
          data: orderModel.toJson());
      return const Right(null);
    } catch (e) {
        return Left(Failures( errorMessage: e.toString()));

    }

  }

}