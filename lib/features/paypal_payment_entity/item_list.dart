import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_item_entity.dart';
import 'package:fruits_ecommerec/features/paypal_payment_entity/paypal_payment_entity.dart';

import 'item.dart';

class ItemList {
  final List<ItemEntity> items;

  ItemList({required this.items});

factory ItemList.formEntity({required List<CartItemEntity> cartItems}){
  return ItemList(items: cartItems.map((cartItemEntity) => ItemEntity.fromEntity(cartItemEntity)).toList());
}

  Map<String, dynamic> toJson() {
    return {
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}