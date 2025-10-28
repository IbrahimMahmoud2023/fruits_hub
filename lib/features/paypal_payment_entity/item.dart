import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';

class ItemEntity {
  final String name;
  final int quantity;
  final String price;
  final String currency;

  ItemEntity({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  factory ItemEntity.fromEntity(CartItemEntity cartItemEntity){
    return ItemEntity(
        name: cartItemEntity.productEntity.productName,
        quantity: cartItemEntity.quantity,
        price: cartItemEntity.productEntity.price.toString(),
        currency: cartItemEntity.getCurrency(),

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
      'price': price,
      'currency': currency,
    };
  }
}