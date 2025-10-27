import '../../../home_view/domain/entites/cart_item_entity.dart';

class OrderProductModel {
  final String name;
  final double price;
  final String code;
  final String imageUrl;
  final int quantity;

  OrderProductModel({
    required this.code,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  factory OrderProductModel.fromEntity({required CartItemEntity cartItemEntity}) {
    return OrderProductModel(
      code: cartItemEntity.productEntity.productCode,
      name: cartItemEntity.productEntity.productName,
      price: cartItemEntity.productEntity.price.toDouble(),
      imageUrl: cartItemEntity.productEntity.imageUrl!,
      quantity: cartItemEntity.quantity,
    );
  }
  toJson() {
    return {
      'name': name,
      'price': price,
      'code': code,
      'imageUrl': imageUrl,
      'quantity': quantity,
    };
  }
}
