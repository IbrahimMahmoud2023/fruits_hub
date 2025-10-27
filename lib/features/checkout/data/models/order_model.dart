import 'package:fruits_ecommerec/features/checkout/data/models/address_model.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';

import 'order_product_model.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final AddressModel addressModel;

  final List<OrderProductModel> orderProductModel;
  final String paymentMethod;

  OrderModel({
    required this.totalPrice,
    required this.uId,
    required this.addressModel,
    required this.orderProductModel,
    required this.paymentMethod,
  });

  factory OrderModel.fromEntity(OrderEntity orderEntity) {
    return OrderModel(
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
      'totalPrice': totalPrice,
      'uId': uId,
      'addressModel': addressModel.toJason(),
      'orderProductModel': orderProductModel.map((e) => e.toJson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }
}
