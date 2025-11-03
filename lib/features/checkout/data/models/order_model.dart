import 'package:fruits_ecommerec/features/checkout/data/models/address_model.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_input_entity.dart';
import 'package:uuid/uuid.dart';

import 'order_product_model.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final AddressModel addressModel;

  final List<OrderProductModel> orderProductModel;
  final String paymentMethod;
  final String orderId;

  OrderModel({
    required this.orderId,
    required this.totalPrice,
    required this.uId,
    required this.addressModel,
    required this.orderProductModel,
    required this.paymentMethod,
  });

  factory OrderModel.fromEntity(OrderInputEntity orderEntity) {
    return OrderModel(
      orderId: Uuid().v4(),
      totalPrice: orderEntity.cartEntity.calculateTotalPrice().toDouble(),
      uId: orderEntity.uId,
      addressModel: AddressModel.fromEntity(orderEntity.addressShipping),
      orderProductModel: orderEntity.cartEntity.cartItems
          .map((e) => OrderProductModel.fromEntity(cartItemEntity: e))
          .toList(),
      paymentMethod: orderEntity.payWithCash! ? "cash " : "paypal",
    );
  }

  toJson() {
    return {
      'orderId': orderId,
      'totalPrice': totalPrice,
      'uId': uId,
      'status': 'pending',
      'date': DateTime.now().toString(),
      'addressModel': addressModel.toJason(),
      'orderProductModel': orderProductModel.map((e) => e.toJson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
