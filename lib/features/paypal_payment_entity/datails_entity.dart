import '../checkout/domain/entites/order_input_entity.dart';

class DetailsEntity {
  final String subtotal;
  final String shipping;
  final double shippingDiscount;

  DetailsEntity({
    required this.subtotal,
    required this.shipping,
    required this.shippingDiscount,
  });


  Map<String, dynamic> toJson() {
    return {
      'subtotal': subtotal,
      'shipping': shipping,
      'shipping_discount': shippingDiscount,
    };
  }


  factory DetailsEntity.fromEntity(OrderInputEntity entity){
    return DetailsEntity(
        subtotal: entity.cartEntity.calculateTotalPrice().toString(),
        shipping:entity.calculateShippingCost().toString(),
        shippingDiscount: entity.calculateShippingDiscount()
    );
  }
}